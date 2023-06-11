part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initialState() = _InitialState;
  const factory AuthenticationState.loadingState() = _LoadingState;
  const factory AuthenticationState.signedInState(
      {required LocalUser? localUser}) = _SignedInState;
  const factory AuthenticationState.signedOutState() = _SignedOutState;
}
