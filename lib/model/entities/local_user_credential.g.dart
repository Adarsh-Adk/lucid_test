// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_user_credential.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocalUserCredential _$$_LocalUserCredentialFromJson(
        Map<String, dynamic> json) =>
    _$_LocalUserCredential(
      user: json['user'] == null
          ? null
          : LocalUser.fromJson(json['user'] as Map<String, dynamic>),
      credential: json['credential'] == null
          ? null
          : LocalAuthCredential.fromJson(
              json['credential'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LocalUserCredentialToJson(
        _$_LocalUserCredential instance) =>
    <String, dynamic>{
      'user': instance.user,
      'credential': instance.credential,
    };
