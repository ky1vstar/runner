import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';
import 'package:github/github.dart';
import 'package:gl_gh_common/gl_gh_common.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf_web_socket/shelf_web_socket.dart';
import 'package:web_socket_channel/status.dart' as status;
import 'package:web_socket_channel/web_socket_channel.dart';

late final GitHubStorage _gitHubStorage;
late final String _gistId;

void main(List<String> arguments) async {
  final argParser = ArgParser()
    ..addOption("github-token")
    ..addOption("gist-id");
  final argResults = argParser.parse(arguments);

  final gitHubToken = argResults["github-token"] as String;
  _gitHubStorage = GitHubStorage(gitHubClient: GitHub(auth: Authentication.withToken(gitHubToken)));
  _gistId = argResults["gist-id"] as String;

  final serverPort = await _startServer();
  _setupAndReportTunnel(serverPort);
}

Future<int> _startServer() async {
  final wsHandler = webSocketHandler((WebSocketChannel webSocket) {
    print("new webSocket: $webSocket");
    Process? processToClose;

    void addWsResponse(WsResponseMessage response) {
      webSocket.sink.add(jsonEncode(response));
    }

    webSocket.stream.map((message) {
      final jsonString = message as String;
      final json = jsonDecode(jsonString) as Map<String, dynamic>;
      return WsRequestMessage.fromJson(json);
    }).listen(
      (request) async {
        try {
          request.map(
            start: (request) async {
              final process = await Process.start(
                request.executable,
                request.arguments,
                workingDirectory: request.workingDirectory,
                environment: request.environment,
              );
              processToClose = process;

              addWsResponse(const WsResponseMessage.started());

              final stdoutCompleter = Completer<void>();
              final stderrCompleter = Completer<void>();

              process.stdout.map(WsResponseMessage.stdout).listen(addWsResponse, onDone: stdoutCompleter.complete);
              process.stderr.map(WsResponseMessage.stderr).listen(addWsResponse, onDone: stderrCompleter.complete);

              await Future.wait([stdoutCompleter.future, stderrCompleter.future]);

              addWsResponse(WsResponseMessage.exitCode(await process.exitCode));
              processToClose = null;

              webSocket.sink.close(status.goingAway);
            },
            kill: (_) {
              processToClose?.kill();
              webSocket.sink.close(status.goingAway);
            },
          );
        } on Object catch (e) {
          webSocket.sink.close(status.internalServerError, e.toString());
        }
      },
      onError: (_) {
        processToClose?.kill();
      },
      onDone: () => processToClose?.kill(),
    );
  });

  final router = Router()
    ..get("/get_client_sources", (Request request) async {
      return Response.ok("");
    })
    ..get("/kill", (_) => exit(0))
    ..get("/ws", wsHandler);

  final pipeline = const Pipeline().addMiddleware(logRequests()).addHandler(router);

  final server = await serve(pipeline, InternetAddress.anyIPv4, 8080);
  return server.port;
}

Future<Never> _setupAndReportTunnel(int port) async {
  final process = await Process.start(
    "ssh",
    [
      "-oStrictHostKeyChecking=no",
      "-R",
      "80:localhost:$port",
      "nokey@localhost.run",
    ],
  );

  final regExp = RegExp(r"(\S+) tunneled with tls termination");
  final tunnelHostnameStream = process.stdout
      .transform(const Utf8Decoder(allowMalformed: true))
      .transform(const LineSplitter())
      .where(regExp.hasMatch)
      .map((line) => regExp.firstMatch(line)!.group(1)!);

  final reportFuture = Future.sync(() async {
    await for (final hostname in tunnelHostnameStream) {
      await _gitHubStorage.setValue(gistId: _gistId, value: hostname);
    }
    await Future.microtask(() {
      throw Exception("Tunnel output ended unexpectedly");
    });
  });
  final exitCodeFuture = process.exitCode.then((exitCode) {
    throw Exception("Tunnel process exited unexpectedly with code $exitCode");
  });

  return Future.any([exitCodeFuture, reportFuture]);
}
