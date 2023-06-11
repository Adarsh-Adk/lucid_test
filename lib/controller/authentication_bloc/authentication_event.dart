part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.subscribe() = _Subscribe;
  const factory AuthenticationEvent.authenticationChange(
      {required LocalUser? localUser}) = _AuthenticationChange;
}
