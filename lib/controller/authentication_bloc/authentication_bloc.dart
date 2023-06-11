import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model/entities/local_user.dart';
import '../../model/repositories/firebase_auth_repo.dart';

part 'authentication_bloc.freezed.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  LocalUser? _user;
  LocalUser? get user => _user;
  AuthenticationBloc() : super(const AuthenticationState.initialState()) {
    final repo = FirebaseAuthRepo();

    on<AuthenticationEvent>((event, emit) async {
      await event.when(subscribe: () async {
        emit(const AuthenticationState.loadingState());
        repo.authStateChangeListener().listen((user) async {
          if (user != null) {
            add(AuthenticationEvent.authenticationChange(
                localUser: LocalUser(
                    email: user.email,
                    displayName: user.displayName,
                    photoUrl: user.photoURL,
                    uid: user.uid)));
          } else {
            add(const AuthenticationEvent.authenticationChange(
                localUser: null));
          }
        });
      }, authenticationChange: (LocalUser? localUser) {
        if (localUser?.uid != null) {
          _user = localUser;
          emit(AuthenticationState.signedInState(localUser: _user));
        } else {
          _user = null;
          emit(const AuthenticationState.signedOutState());
        }
      });
    });
  }
}
