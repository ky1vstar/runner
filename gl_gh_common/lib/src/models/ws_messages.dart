import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ws_messages.freezed.dart';
part 'ws_messages.g.dart';

@freezed
class WsRequestMessage with _$WsRequestMessage {
  const factory WsRequestMessage.start({
    required String executable,
    required List<String> arguments,
    required String? workingDirectory,
    required Map<String, String>? environment,
  }) = _Start;

  const factory WsRequestMessage.kill() = _Kill;

  factory WsRequestMessage.fromJson(Map<String, dynamic> json) => _$WsRequestMessageFromJson(json);
}

@freezed
class WsResponseMessage with _$WsResponseMessage {
  const factory WsResponseMessage.serving() = _Serving;
  const factory WsResponseMessage.stdout(@Base64Converter() List<int> data) = _Stdout;
  const factory WsResponseMessage.stderr(@Base64Converter() List<int> data) = _Stderr;
  const factory WsResponseMessage.exitCode(int exitCode) = _ExitCode;

  factory WsResponseMessage.fromJson(Map<String, dynamic> json) => _$WsResponseMessageFromJson(json);
}

class Base64Converter extends JsonConverter<List<int>, String> {
  const Base64Converter();

  @override
  List<int> fromJson(String json) {
    return base64Decode(json);
  }

  @override
  String toJson(List<int> object) {
    return base64Encode(object);
  }
}
