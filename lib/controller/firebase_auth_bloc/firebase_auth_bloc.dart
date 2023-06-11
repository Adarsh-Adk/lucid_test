import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model/entities/local_user.dart';
import '../../model/entities/local_user_credential.dart';
import '../../model/repositories/firebase_auth_repo.dart';

part 'firebase_auth_bloc.freezed.dart';
part 'firebase_auth_event.dart';
part 'firebase_auth_state.dart';

class FirebaseAuthBloc extends Bloc<FirebaseAuthEvent, FirebaseAuthState> {
  FirebaseAuthBloc() : super(const FirebaseAuthState.initialState()) {
    final repo = FirebaseAuthRepo();
    on<FirebaseAuthEvent>((event, emit) async {
      await event.when(signIn: (email, password) async {
        emit(const FirebaseAuthState.loadingState());
        try {
          final dataResponse = await repo.signInUserWithEmailAndPassword(
              email: email, password: password);
          if (dataResponse.hasData) {
            final userCredential = dataResponse.data as LocalUserCredential;
            emit(FirebaseAuthState.successState(
                userSignedIn: true,
                user: userCredential.user,
                isSignup: false));
          } else {
            emit(FirebaseAuthState.failedState(
                error: dataResponse.error ??
                    "An error occurred while signing in"));
          }
        } catch (e) {
          log("Exception occurred while signIn $e");
          emit(const FirebaseAuthState.failedState(
              error: "An exception occurred while signing in"));
        }
      }, signUp: (email, password) async {
        emit(const FirebaseAuthState.loadingState());
        try {
          final dataResponse = await repo.createUserWithEmailAndPassword(
              email: email, password: password);
          if (dataResponse.hasData) {
            final userCredential = dataResponse.data as LocalUserCredential;
            emit(FirebaseAuthState.successState(
                userSignedIn: true, user: userCredential.user, isSignup: true));
          } else {
            emit(FirebaseAuthState.failedState(
                error: dataResponse.error ??
                    "An error occurred while signing in"));
          }
        } catch (e) {
          log("Exception occurred while signIn $e");
          emit(const FirebaseAuthState.failedState(
              error: "An exception occurred while signing in"));
        }
      }, signOut: () async {
        emit(const FirebaseAuthState.loadingState());
        try {
          await repo.signOut();
        } catch (e) {
          log("Exception occurred while signIn $e");
          emit(const FirebaseAuthState.failedState(
              error: "An exception occurred while signing in"));
        }
      });
    });
  }
}
