part of 'firebase_auth_bloc.dart';

@freezed
class FirebaseAuthEvent with _$FirebaseAuthEvent {
  const factory FirebaseAuthEvent.signIn(
      {required String email, required String password}) = _SignIn;
  const factory FirebaseAuthEvent.signUp(
      {required String email, required String password}) = _SignUp;
  const factory FirebaseAuthEvent.signOut() = _SignOut;
}
