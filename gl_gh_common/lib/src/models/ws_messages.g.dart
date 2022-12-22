// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ws_messages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Start _$$_StartFromJson(Map<String, dynamic> json) => _$_Start(
      executable: json['executable'] as String,
      arguments:
          (json['arguments'] as List<dynamic>).map((e) => e as String).toList(),
      workingDirectory: json['workingDirectory'] as String?,
      environment: (json['environment'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_StartToJson(_$_Start instance) => <String, dynamic>{
      'executable': instance.executable,
      'arguments': instance.arguments,
      'workingDirectory': instance.workingDirectory,
      'environment': instance.environment,
      'runtimeType': instance.$type,
    };

_$_Kill _$$_KillFromJson(Map<String, dynamic> json) => _$_Kill(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_KillToJson(_$_Kill instance) => <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_Started _$$_StartedFromJson(Map<String, dynamic> json) => _$_Started(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_StartedToJson(_$_Started instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_Stdout _$$_StdoutFromJson(Map<String, dynamic> json) => _$_Stdout(
      const Base64Converter().fromJson(json['data'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_StdoutToJson(_$_Stdout instance) => <String, dynamic>{
      'data': const Base64Converter().toJson(instance.data),
      'runtimeType': instance.$type,
    };

_$_Stderr _$$_StderrFromJson(Map<String, dynamic> json) => _$_Stderr(
      const Base64Converter().fromJson(json['data'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_StderrToJson(_$_Stderr instance) => <String, dynamic>{
      'data': const Base64Converter().toJson(instance.data),
      'runtimeType': instance.$type,
    };

_$_ExitCode _$$_ExitCodeFromJson(Map<String, dynamic> json) => _$_ExitCode(
      json['exitCode'] as int,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_ExitCodeToJson(_$_ExitCode instance) =>
    <String, dynamic>{
      'exitCode': instance.exitCode,
      'runtimeType': instance.$type,
    };
