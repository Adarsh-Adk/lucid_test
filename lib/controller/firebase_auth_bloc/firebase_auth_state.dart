part of 'firebase_auth_bloc.dart';

@freezed
class FirebaseAuthState with _$FirebaseAuthState {
  const factory FirebaseAuthState.initialState() = _InitialState;
  const factory FirebaseAuthState.loadingState() = _LoadingState;
  const factory FirebaseAuthState.successState(
      {required bool userSignedIn,
      required LocalUser? user,
      required bool isSignup}) = _SuccessState;
  const factory FirebaseAuthState.failedState({required String error}) =
      _FailedState;
}
