// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_auth_credential.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocalAuthCredential _$LocalAuthCredentialFromJson(Map<String, dynamic> json) {
  return _LocalAuthCredential.fromJson(json);
}

/// @nodoc
mixin _$LocalAuthCredential {
  String? get accessToken => throw _privateConstructorUsedError;
  String? get providerId => throw _privateConstructorUsedError;
  String? get signInMethod => throw _privateConstructorUsedError;
  int? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalAuthCredentialCopyWith<LocalAuthCredential> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalAuthCredentialCopyWith<$Res> {
  factory $LocalAuthCredentialCopyWith(
          LocalAuthCredential value, $Res Function(LocalAuthCredential) then) =
      _$LocalAuthCredentialCopyWithImpl<$Res, LocalAuthCredential>;
  @useResult
  $Res call(
      {String? accessToken,
      String? providerId,
      String? signInMethod,
      int? token});
}

/// @nodoc
class _$LocalAuthCredentialCopyWithImpl<$Res, $Val extends LocalAuthCredential>
    implements $LocalAuthCredentialCopyWith<$Res> {
  _$LocalAuthCredentialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? providerId = freezed,
    Object? signInMethod = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      providerId: freezed == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String?,
      signInMethod: freezed == signInMethod
          ? _value.signInMethod
          : signInMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocalAuthCredentialCopyWith<$Res>
    implements $LocalAuthCredentialCopyWith<$Res> {
  factory _$$_LocalAuthCredentialCopyWith(_$_LocalAuthCredential value,
          $Res Function(_$_LocalAuthCredential) then) =
      __$$_LocalAuthCredentialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? accessToken,
      String? providerId,
      String? signInMethod,
      int? token});
}

/// @nodoc
class __$$_LocalAuthCredentialCopyWithImpl<$Res>
    extends _$LocalAuthCredentialCopyWithImpl<$Res, _$_LocalAuthCredential>
    implements _$$_LocalAuthCredentialCopyWith<$Res> {
  __$$_LocalAuthCredentialCopyWithImpl(_$_LocalAuthCredential _value,
      $Res Function(_$_LocalAuthCredential) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? providerId = freezed,
    Object? signInMethod = freezed,
    Object? token = freezed,
  }) {
    return _then(_$_LocalAuthCredential(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      providerId: freezed == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String?,
      signInMethod: freezed == signInMethod
          ? _value.signInMethod
          : signInMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocalAuthCredential implements _LocalAuthCredential {
  const _$_LocalAuthCredential(
      {this.accessToken, this.providerId, this.signInMethod, this.token});

  factory _$_LocalAuthCredential.fromJson(Map<String, dynamic> json) =>
      _$$_LocalAuthCredentialFromJson(json);

  @override
  final String? accessToken;
  @override
  final String? providerId;
  @override
  final String? signInMethod;
  @override
  final int? token;

  @override
  String toString() {
    return 'LocalAuthCredential(accessToken: $accessToken, providerId: $providerId, signInMethod: $signInMethod, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalAuthCredential &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.providerId, providerId) ||
                other.providerId == providerId) &&
            (identical(other.signInMethod, signInMethod) ||
                other.signInMethod == signInMethod) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, providerId, signInMethod, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocalAuthCredentialCopyWith<_$_LocalAuthCredential> get copyWith =>
      __$$_LocalAuthCredentialCopyWithImpl<_$_LocalAuthCredential>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocalAuthCredentialToJson(
      this,
    );
  }
}

abstract class _LocalAuthCredential implements LocalAuthCredential {
  const factory _LocalAuthCredential(
      {final String? accessToken,
      final String? providerId,
      final String? signInMethod,
      final int? token}) = _$_LocalAuthCredential;

  factory _LocalAuthCredential.fromJson(Map<String, dynamic> json) =
      _$_LocalAuthCredential.fromJson;

  @override
  String? get accessToken;
  @override
  String? get providerId;
  @override
  String? get signInMethod;
  @override
  int? get token;
  @override
  @JsonKey(ignore: true)
  _$$_LocalAuthCredentialCopyWith<_$_LocalAuthCredential> get copyWith =>
      throw _privateConstructorUsedError;
}
