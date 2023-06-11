import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

import '../entities/data_response.dart';
import '../entities/local_auth_credential.dart';
import '../entities/local_user.dart';
import '../entities/local_user_credential.dart';

class FirebaseAuthRepo {
  static final uid = FirebaseAuth.instance.currentUser?.uid;

  Future<DataResponse> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final authCredential = credential.credential;
      final user = credential.user;
      final localUser = LocalUser(
          photoUrl: user?.photoURL,
          uid: user?.uid,
          displayName: user?.displayName,
          email: user?.email);
      final localAuthCredential = LocalAuthCredential(
          token: authCredential?.token,
          accessToken: authCredential?.accessToken,
          providerId: authCredential?.providerId,
          signInMethod: authCredential?.signInMethod);
      return DataResponse(
          data: LocalUserCredential(
              credential: localAuthCredential, user: localUser));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return DataResponse(error: 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        return DataResponse(
            error: 'The account already exists for that email.');
      } else {
        log("Firebase Authentication Exception occurred in createUserWithEmailAndPassword: $e");
        return DataResponse(
            error: 'Unexpected Firebase Authentication Error occurred');
      }
    } catch (e) {
      log("Exception occurred in createUserWithEmailAndPassword: $e");
      return DataResponse(error: 'Unexpected Error occurred');
    }
  }

  Future<DataResponse> signInUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final authCredential = credential.credential;
      final user = credential.user;
      final localUser = LocalUser(
          photoUrl: user?.photoURL,
          uid: user?.uid,
          displayName: user?.displayName,
          email: user?.email);
      final localAuthCredential = LocalAuthCredential(
          token: authCredential?.token,
          accessToken: authCredential?.accessToken,
          providerId: authCredential?.providerId,
          signInMethod: authCredential?.signInMethod);
      return DataResponse(
          data: LocalUserCredential(
              user: localUser, credential: localAuthCredential));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return DataResponse(error: 'No user found for that email.');
      } else if (e.code == 'wrong-password') {
        return DataResponse(error: 'Wrong password provided for that user.');
      } else {
        log("Firebase Authentication Exception occurred in createUserWithEmailAndPassword: $e");
        return DataResponse(
            error: 'Unexpected Firebase Authentication Error occurred');
      }
    } catch (e) {
      log("Exception occurred in createUserWithEmailAndPassword: $e");
      return DataResponse(error: 'Unexpected Error occurred');
    }
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  Stream<User?> authStateChangeListener() async* {
    yield* FirebaseAuth.instance.authStateChanges();
  }
}
