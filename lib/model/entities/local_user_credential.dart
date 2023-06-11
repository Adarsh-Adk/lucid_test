import 'package:freezed_annotation/freezed_annotation.dart';

import 'local_auth_credential.dart';
import 'local_user.dart';

part 'local_user_credential.freezed.dart';
part 'local_user_credential.g.dart';

@freezed
class LocalUserCredential with _$LocalUserCredential {
  const factory LocalUserCredential(
      {final LocalUser? user,
      final LocalAuthCredential? credential}) = _LocalUserCredential;

  factory LocalUserCredential.fromJson(Map<String, dynamic> json) =>
      _$LocalUserCredentialFromJson(json);
}
