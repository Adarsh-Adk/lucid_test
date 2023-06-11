import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_auth_credential.freezed.dart';
part 'local_auth_credential.g.dart';

@freezed
class LocalAuthCredential with _$LocalAuthCredential {
  const factory LocalAuthCredential({
    final String? accessToken,
    final String? providerId,
    final String? signInMethod,
    final int? token,
  }) = _LocalAuthCredential;

  factory LocalAuthCredential.fromJson(Map<String, dynamic> json) =>
      _$LocalAuthCredentialFromJson(json);
}
