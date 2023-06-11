import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'controller/authentication_bloc/authentication_bloc.dart';
import 'controller/firebase_auth_bloc/firebase_auth_bloc.dart';
import 'controller/firestore_bloc/firestore_bloc.dart';
import 'controller/simple_bloc_observer.dart';
import 'firebase_options.dart';
import 'view/core/app_constants.dart';
import 'view/core/custom_router.dart';
import 'view/screens/splash_screen.dart';
import 'view/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => AuthenticationBloc(),
      ),
      BlocProvider(
        create: (context) => FirestoreBloc(),
      ),
      BlocProvider(
        create: (context) => FirebaseAuthBloc(),
      ),
    ],
    child: const MyApp(),
  ));
}

final navKey = GlobalKey<NavigatorState>();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    BlocProvider.of<AuthenticationBloc>(context)
        .add(const AuthenticationEvent.subscribe());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        state.when(
            initialState: () {},
            loadingState: () {},
            signedInState: (user) {
              log("logged in");
              Future.delayed(const Duration(seconds: 2), () {
                navKey.currentState?.pushNamedAndRemoveUntil(
                    CustomRouter.homeScreen, (route) => false);
              });
            },
            signedOutState: () {
              log("signed out");
              Future.delayed(const Duration(seconds: 1), () {
                navKey.currentState?.pushNamedAndRemoveUntil(
                    CustomRouter.loginScreen, (route) => false);
              });
            });
      },
      child: MaterialApp(
        navigatorKey: navKey,
        title: AppConstants.appName,
        theme: AppTheme.light(),
        home: const SplashScreen(),
        onGenerateRoute: CustomRouter.generateRoute,
      ),
    );
  }
}
