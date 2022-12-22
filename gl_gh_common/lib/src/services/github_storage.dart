import 'package:github/github.dart';
import 'package:retry/retry.dart';

class GitHubStorage {
  GitHubStorage({required this.gitHubClient});

  final GitHub gitHubClient;

  Future<String> createStorage({required String name}) {
    return _kApiRetryOptions.retry(() async {
      final gist = await gitHubClient.gists.createGist({_kKey: _kNoValue}, description: name);
      if (gist.id == null) {
        throw Exception("Failed to create gist");
      }
      return gist.id!;
    });
  }

  Future<String?> getValue({required String gistId}) {
    return _kApiRetryOptions.retry(() async {
      final gist = await gitHubClient.gists.getGist(gistId);
      final value = gist.files![_kKey]!.content!;
      return value == _kNoValue ? null : value;
    });
  }

  Future<void> setValue({required String gistId, required String value}) {
    return _kApiRetryOptions.retry(() async {
      await gitHubClient.gists.editGist(gistId, files: {_kKey: value.isEmpty ? _kNoValue : value});
    });
  }
}

const _kKey = "key.txt";
const _kNoValue = "NOT_A_VALUE";

const _kApiRetryOptions = RetryOptions(
  delayFactor: Duration(minutes: 1),
  maxDelay: Duration(seconds: 5),
  maxAttempts: 3,
);
