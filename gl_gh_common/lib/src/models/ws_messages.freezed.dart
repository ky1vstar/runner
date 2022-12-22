// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ws_messages.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WsRequestMessage _$WsRequestMessageFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'start':
      return _Start.fromJson(json);
    case 'kill':
      return _Kill.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'WsRequestMessage',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$WsRequestMessage {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String executable, List<String> arguments,
            String? workingDirectory, Map<String, String>? environment)
        start,
    required TResult Function() kill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String executable, List<String> arguments,
            String? workingDirectory, Map<String, String>? environment)?
        start,
    TResult? Function()? kill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String executable, List<String> arguments,
            String? workingDirectory, Map<String, String>? environment)?
        start,
    TResult Function()? kill,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_Kill value) kill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_Kill value)? kill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Kill value)? kill,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WsRequestMessageCopyWith<$Res> {
  factory $WsRequestMessageCopyWith(
          WsRequestMessage value, $Res Function(WsRequestMessage) then) =
      _$WsRequestMessageCopyWithImpl<$Res, WsRequestMessage>;
}

/// @nodoc
class _$WsRequestMessageCopyWithImpl<$Res, $Val extends WsRequestMessage>
    implements $WsRequestMessageCopyWith<$Res> {
  _$WsRequestMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartCopyWith<$Res> {
  factory _$$_StartCopyWith(_$_Start value, $Res Function(_$_Start) then) =
      __$$_StartCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String executable,
      List<String> arguments,
      String? workingDirectory,
      Map<String, String>? environment});
}

/// @nodoc
class __$$_StartCopyWithImpl<$Res>
    extends _$WsRequestMessageCopyWithImpl<$Res, _$_Start>
    implements _$$_StartCopyWith<$Res> {
  __$$_StartCopyWithImpl(_$_Start _value, $Res Function(_$_Start) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? executable = null,
    Object? arguments = null,
    Object? workingDirectory = freezed,
    Object? environment = freezed,
  }) {
    return _then(_$_Start(
      executable: null == executable
          ? _value.executable
          : executable // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: null == arguments
          ? _value._arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as List<String>,
      workingDirectory: freezed == workingDirectory
          ? _value.workingDirectory
          : workingDirectory // ignore: cast_nullable_to_non_nullable
              as String?,
      environment: freezed == environment
          ? _value._environment
          : environment // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Start implements _Start {
  const _$_Start(
      {required this.executable,
      required final List<String> arguments,
      required this.workingDirectory,
      required final Map<String, String>? environment,
      final String? $type})
      : _arguments = arguments,
        _environment = environment,
        $type = $type ?? 'start';

  factory _$_Start.fromJson(Map<String, dynamic> json) =>
      _$$_StartFromJson(json);

  @override
  final String executable;
  final List<String> _arguments;
  @override
  List<String> get arguments {
    if (_arguments is EqualUnmodifiableListView) return _arguments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_arguments);
  }

  @override
  final String? workingDirectory;
  final Map<String, String>? _environment;
  @override
  Map<String, String>? get environment {
    final value = _environment;
    if (value == null) return null;
    if (_environment is EqualUnmodifiableMapView) return _environment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WsRequestMessage.start(executable: $executable, arguments: $arguments, workingDirectory: $workingDirectory, environment: $environment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Start &&
            (identical(other.executable, executable) ||
                other.executable == executable) &&
            const DeepCollectionEquality()
                .equals(other._arguments, _arguments) &&
            (identical(other.workingDirectory, workingDirectory) ||
                other.workingDirectory == workingDirectory) &&
            const DeepCollectionEquality()
                .equals(other._environment, _environment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      executable,
      const DeepCollectionEquality().hash(_arguments),
      workingDirectory,
      const DeepCollectionEquality().hash(_environment));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartCopyWith<_$_Start> get copyWith =>
      __$$_StartCopyWithImpl<_$_Start>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String executable, List<String> arguments,
            String? workingDirectory, Map<String, String>? environment)
        start,
    required TResult Function() kill,
  }) {
    return start(executable, arguments, workingDirectory, environment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String executable, List<String> arguments,
            String? workingDirectory, Map<String, String>? environment)?
        start,
    TResult? Function()? kill,
  }) {
    return start?.call(executable, arguments, workingDirectory, environment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String executable, List<String> arguments,
            String? workingDirectory, Map<String, String>? environment)?
        start,
    TResult Function()? kill,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(executable, arguments, workingDirectory, environment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_Kill value) kill,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_Kill value)? kill,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Kill value)? kill,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_StartToJson(
      this,
    );
  }
}

abstract class _Start implements WsRequestMessage {
  const factory _Start(
      {required final String executable,
      required final List<String> arguments,
      required final String? workingDirectory,
      required final Map<String, String>? environment}) = _$_Start;

  factory _Start.fromJson(Map<String, dynamic> json) = _$_Start.fromJson;

  String get executable;
  List<String> get arguments;
  String? get workingDirectory;
  Map<String, String>? get environment;
  @JsonKey(ignore: true)
  _$$_StartCopyWith<_$_Start> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_KillCopyWith<$Res> {
  factory _$$_KillCopyWith(_$_Kill value, $Res Function(_$_Kill) then) =
      __$$_KillCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_KillCopyWithImpl<$Res>
    extends _$WsRequestMessageCopyWithImpl<$Res, _$_Kill>
    implements _$$_KillCopyWith<$Res> {
  __$$_KillCopyWithImpl(_$_Kill _value, $Res Function(_$_Kill) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_Kill implements _Kill {
  const _$_Kill({final String? $type}) : $type = $type ?? 'kill';

  factory _$_Kill.fromJson(Map<String, dynamic> json) => _$$_KillFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WsRequestMessage.kill()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Kill);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String executable, List<String> arguments,
            String? workingDirectory, Map<String, String>? environment)
        start,
    required TResult Function() kill,
  }) {
    return kill();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String executable, List<String> arguments,
            String? workingDirectory, Map<String, String>? environment)?
        start,
    TResult? Function()? kill,
  }) {
    return kill?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String executable, List<String> arguments,
            String? workingDirectory, Map<String, String>? environment)?
        start,
    TResult Function()? kill,
    required TResult orElse(),
  }) {
    if (kill != null) {
      return kill();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) start,
    required TResult Function(_Kill value) kill,
  }) {
    return kill(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? start,
    TResult? Function(_Kill value)? kill,
  }) {
    return kill?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? start,
    TResult Function(_Kill value)? kill,
    required TResult orElse(),
  }) {
    if (kill != null) {
      return kill(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_KillToJson(
      this,
    );
  }
}

abstract class _Kill implements WsRequestMessage {
  const factory _Kill() = _$_Kill;

  factory _Kill.fromJson(Map<String, dynamic> json) = _$_Kill.fromJson;
}

WsResponseMessage _$WsResponseMessageFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'started':
      return _Started.fromJson(json);
    case 'stdout':
      return _Stdout.fromJson(json);
    case 'stderr':
      return _Stderr.fromJson(json);
    case 'exitCode':
      return _ExitCode.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'WsResponseMessage',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$WsResponseMessage {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(@Base64Converter() List<int> data) stdout,
    required TResult Function(@Base64Converter() List<int> data) stderr,
    required TResult Function(int exitCode) exitCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(@Base64Converter() List<int> data)? stdout,
    TResult? Function(@Base64Converter() List<int> data)? stderr,
    TResult? Function(int exitCode)? exitCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(@Base64Converter() List<int> data)? stdout,
    TResult Function(@Base64Converter() List<int> data)? stderr,
    TResult Function(int exitCode)? exitCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Stdout value) stdout,
    required TResult Function(_Stderr value) stderr,
    required TResult Function(_ExitCode value) exitCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Stdout value)? stdout,
    TResult? Function(_Stderr value)? stderr,
    TResult? Function(_ExitCode value)? exitCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Stdout value)? stdout,
    TResult Function(_Stderr value)? stderr,
    TResult Function(_ExitCode value)? exitCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WsResponseMessageCopyWith<$Res> {
  factory $WsResponseMessageCopyWith(
          WsResponseMessage value, $Res Function(WsResponseMessage) then) =
      _$WsResponseMessageCopyWithImpl<$Res, WsResponseMessage>;
}

/// @nodoc
class _$WsResponseMessageCopyWithImpl<$Res, $Val extends WsResponseMessage>
    implements $WsResponseMessageCopyWith<$Res> {
  _$WsResponseMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$WsResponseMessageCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_Started implements _Started {
  const _$_Started({final String? $type}) : $type = $type ?? 'started';

  factory _$_Started.fromJson(Map<String, dynamic> json) =>
      _$$_StartedFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WsResponseMessage.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(@Base64Converter() List<int> data) stdout,
    required TResult Function(@Base64Converter() List<int> data) stderr,
    required TResult Function(int exitCode) exitCode,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(@Base64Converter() List<int> data)? stdout,
    TResult? Function(@Base64Converter() List<int> data)? stderr,
    TResult? Function(int exitCode)? exitCode,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(@Base64Converter() List<int> data)? stdout,
    TResult Function(@Base64Converter() List<int> data)? stderr,
    TResult Function(int exitCode)? exitCode,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Stdout value) stdout,
    required TResult Function(_Stderr value) stderr,
    required TResult Function(_ExitCode value) exitCode,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Stdout value)? stdout,
    TResult? Function(_Stderr value)? stderr,
    TResult? Function(_ExitCode value)? exitCode,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Stdout value)? stdout,
    TResult Function(_Stderr value)? stderr,
    TResult Function(_ExitCode value)? exitCode,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_StartedToJson(
      this,
    );
  }
}

abstract class _Started implements WsResponseMessage {
  const factory _Started() = _$_Started;

  factory _Started.fromJson(Map<String, dynamic> json) = _$_Started.fromJson;
}

/// @nodoc
abstract class _$$_StdoutCopyWith<$Res> {
  factory _$$_StdoutCopyWith(_$_Stdout value, $Res Function(_$_Stdout) then) =
      __$$_StdoutCopyWithImpl<$Res>;
  @useResult
  $Res call({@Base64Converter() List<int> data});
}

/// @nodoc
class __$$_StdoutCopyWithImpl<$Res>
    extends _$WsResponseMessageCopyWithImpl<$Res, _$_Stdout>
    implements _$$_StdoutCopyWith<$Res> {
  __$$_StdoutCopyWithImpl(_$_Stdout _value, $Res Function(_$_Stdout) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Stdout(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Stdout implements _Stdout {
  const _$_Stdout(@Base64Converter() final List<int> data,
      {final String? $type})
      : _data = data,
        $type = $type ?? 'stdout';

  factory _$_Stdout.fromJson(Map<String, dynamic> json) =>
      _$$_StdoutFromJson(json);

  final List<int> _data;
  @override
  @Base64Converter()
  List<int> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WsResponseMessage.stdout(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Stdout &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StdoutCopyWith<_$_Stdout> get copyWith =>
      __$$_StdoutCopyWithImpl<_$_Stdout>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(@Base64Converter() List<int> data) stdout,
    required TResult Function(@Base64Converter() List<int> data) stderr,
    required TResult Function(int exitCode) exitCode,
  }) {
    return stdout(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(@Base64Converter() List<int> data)? stdout,
    TResult? Function(@Base64Converter() List<int> data)? stderr,
    TResult? Function(int exitCode)? exitCode,
  }) {
    return stdout?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(@Base64Converter() List<int> data)? stdout,
    TResult Function(@Base64Converter() List<int> data)? stderr,
    TResult Function(int exitCode)? exitCode,
    required TResult orElse(),
  }) {
    if (stdout != null) {
      return stdout(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Stdout value) stdout,
    required TResult Function(_Stderr value) stderr,
    required TResult Function(_ExitCode value) exitCode,
  }) {
    return stdout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Stdout value)? stdout,
    TResult? Function(_Stderr value)? stderr,
    TResult? Function(_ExitCode value)? exitCode,
  }) {
    return stdout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Stdout value)? stdout,
    TResult Function(_Stderr value)? stderr,
    TResult Function(_ExitCode value)? exitCode,
    required TResult orElse(),
  }) {
    if (stdout != null) {
      return stdout(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_StdoutToJson(
      this,
    );
  }
}

abstract class _Stdout implements WsResponseMessage {
  const factory _Stdout(@Base64Converter() final List<int> data) = _$_Stdout;

  factory _Stdout.fromJson(Map<String, dynamic> json) = _$_Stdout.fromJson;

  @Base64Converter()
  List<int> get data;
  @JsonKey(ignore: true)
  _$$_StdoutCopyWith<_$_Stdout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StderrCopyWith<$Res> {
  factory _$$_StderrCopyWith(_$_Stderr value, $Res Function(_$_Stderr) then) =
      __$$_StderrCopyWithImpl<$Res>;
  @useResult
  $Res call({@Base64Converter() List<int> data});
}

/// @nodoc
class __$$_StderrCopyWithImpl<$Res>
    extends _$WsResponseMessageCopyWithImpl<$Res, _$_Stderr>
    implements _$$_StderrCopyWith<$Res> {
  __$$_StderrCopyWithImpl(_$_Stderr _value, $Res Function(_$_Stderr) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Stderr(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Stderr implements _Stderr {
  const _$_Stderr(@Base64Converter() final List<int> data,
      {final String? $type})
      : _data = data,
        $type = $type ?? 'stderr';

  factory _$_Stderr.fromJson(Map<String, dynamic> json) =>
      _$$_StderrFromJson(json);

  final List<int> _data;
  @override
  @Base64Converter()
  List<int> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WsResponseMessage.stderr(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Stderr &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StderrCopyWith<_$_Stderr> get copyWith =>
      __$$_StderrCopyWithImpl<_$_Stderr>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(@Base64Converter() List<int> data) stdout,
    required TResult Function(@Base64Converter() List<int> data) stderr,
    required TResult Function(int exitCode) exitCode,
  }) {
    return stderr(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(@Base64Converter() List<int> data)? stdout,
    TResult? Function(@Base64Converter() List<int> data)? stderr,
    TResult? Function(int exitCode)? exitCode,
  }) {
    return stderr?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(@Base64Converter() List<int> data)? stdout,
    TResult Function(@Base64Converter() List<int> data)? stderr,
    TResult Function(int exitCode)? exitCode,
    required TResult orElse(),
  }) {
    if (stderr != null) {
      return stderr(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Stdout value) stdout,
    required TResult Function(_Stderr value) stderr,
    required TResult Function(_ExitCode value) exitCode,
  }) {
    return stderr(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Stdout value)? stdout,
    TResult? Function(_Stderr value)? stderr,
    TResult? Function(_ExitCode value)? exitCode,
  }) {
    return stderr?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Stdout value)? stdout,
    TResult Function(_Stderr value)? stderr,
    TResult Function(_ExitCode value)? exitCode,
    required TResult orElse(),
  }) {
    if (stderr != null) {
      return stderr(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_StderrToJson(
      this,
    );
  }
}

abstract class _Stderr implements WsResponseMessage {
  const factory _Stderr(@Base64Converter() final List<int> data) = _$_Stderr;

  factory _Stderr.fromJson(Map<String, dynamic> json) = _$_Stderr.fromJson;

  @Base64Converter()
  List<int> get data;
  @JsonKey(ignore: true)
  _$$_StderrCopyWith<_$_Stderr> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ExitCodeCopyWith<$Res> {
  factory _$$_ExitCodeCopyWith(
          _$_ExitCode value, $Res Function(_$_ExitCode) then) =
      __$$_ExitCodeCopyWithImpl<$Res>;
  @useResult
  $Res call({int exitCode});
}

/// @nodoc
class __$$_ExitCodeCopyWithImpl<$Res>
    extends _$WsResponseMessageCopyWithImpl<$Res, _$_ExitCode>
    implements _$$_ExitCodeCopyWith<$Res> {
  __$$_ExitCodeCopyWithImpl(
      _$_ExitCode _value, $Res Function(_$_ExitCode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exitCode = null,
  }) {
    return _then(_$_ExitCode(
      null == exitCode
          ? _value.exitCode
          : exitCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExitCode implements _ExitCode {
  const _$_ExitCode(this.exitCode, {final String? $type})
      : $type = $type ?? 'exitCode';

  factory _$_ExitCode.fromJson(Map<String, dynamic> json) =>
      _$$_ExitCodeFromJson(json);

  @override
  final int exitCode;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WsResponseMessage.exitCode(exitCode: $exitCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExitCode &&
            (identical(other.exitCode, exitCode) ||
                other.exitCode == exitCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, exitCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExitCodeCopyWith<_$_ExitCode> get copyWith =>
      __$$_ExitCodeCopyWithImpl<_$_ExitCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(@Base64Converter() List<int> data) stdout,
    required TResult Function(@Base64Converter() List<int> data) stderr,
    required TResult Function(int exitCode) exitCode,
  }) {
    return exitCode(this.exitCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(@Base64Converter() List<int> data)? stdout,
    TResult? Function(@Base64Converter() List<int> data)? stderr,
    TResult? Function(int exitCode)? exitCode,
  }) {
    return exitCode?.call(this.exitCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(@Base64Converter() List<int> data)? stdout,
    TResult Function(@Base64Converter() List<int> data)? stderr,
    TResult Function(int exitCode)? exitCode,
    required TResult orElse(),
  }) {
    if (exitCode != null) {
      return exitCode(this.exitCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Stdout value) stdout,
    required TResult Function(_Stderr value) stderr,
    required TResult Function(_ExitCode value) exitCode,
  }) {
    return exitCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Stdout value)? stdout,
    TResult? Function(_Stderr value)? stderr,
    TResult? Function(_ExitCode value)? exitCode,
  }) {
    return exitCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Stdout value)? stdout,
    TResult Function(_Stderr value)? stderr,
    TResult Function(_ExitCode value)? exitCode,
    required TResult orElse(),
  }) {
    if (exitCode != null) {
      return exitCode(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExitCodeToJson(
      this,
    );
  }
}

abstract class _ExitCode implements WsResponseMessage {
  const factory _ExitCode(final int exitCode) = _$_ExitCode;

  factory _ExitCode.fromJson(Map<String, dynamic> json) = _$_ExitCode.fromJson;

  int get exitCode;
  @JsonKey(ignore: true)
  _$$_ExitCodeCopyWith<_$_ExitCode> get copyWith =>
      throw _privateConstructorUsedError;
}
