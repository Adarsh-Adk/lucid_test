import 'package:flutter/material.dart';

import '../screens/home_screen/home_screen.dart';
import '../screens/login_screen.dart';
import '../screens/sign_up_screen.dart';

class CustomRouter {
  static const loginScreen = "/loginScreen";
  static const homeScreen = "/homeScreen";
  static const signUpScreen = "/signUpScreen";

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const LoginScreen(),
        );
      case homeScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const HomeScreen(),
        );
      case signUpScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const SignUpScreen(),
        );

      default:
        return null;
    }
  }
}
