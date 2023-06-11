// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_auth_credential.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocalAuthCredential _$$_LocalAuthCredentialFromJson(
        Map<String, dynamic> json) =>
    _$_LocalAuthCredential(
      accessToken: json['accessToken'] as String?,
      providerId: json['providerId'] as String?,
      signInMethod: json['signInMethod'] as String?,
      token: json['token'] as int?,
    );

Map<String, dynamic> _$$_LocalAuthCredentialToJson(
        _$_LocalAuthCredential instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'providerId': instance.providerId,
      'signInMethod': instance.signInMethod,
      'token': instance.token,
    };
