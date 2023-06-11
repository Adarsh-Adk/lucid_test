import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controller/firebase_auth_bloc/firebase_auth_bloc.dart';
import '../components/app_padding.dart';
import '../core/app_assets.dart';
import '../core/app_constants.dart';
import '../core/custom_router.dart';
import '../core/utility.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isObscure = true;
  String email = "";
  String pass = "";
  bool loading = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: SizedBox.square(
            dimension: 50,
            child: Image.asset(
              AppAssets.blueLogo,
              fit: BoxFit.contain,
            )),
      ),
      body: BlocListener<FirebaseAuthBloc, FirebaseAuthState>(
        listener: (context, state) {
          state.when(
              initialState: () {},
              loadingState: () {},
              successState: (isLogin, user, isSignUp) {},
              failedState: (error) {
                setState(() {
                  loading = false;
                });
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(
                    error,
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: Theme.of(context).colorScheme.onError),
                  ),
                  backgroundColor: Theme.of(context).colorScheme.error,
                ));
              });
        },
        child: SingleChildScrollView(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 700, minWidth: 500),
            padding: AppConstants.defaultEdgeInsets,
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const AppPadding(
                    multipliedBy: 6,
                  ),
                  TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(
                        hintText: "Email", counterText: ""),
                    keyboardType: TextInputType.emailAddress,
                    maxLength: 40,
                    validator: (value) {
                      if (!Utility.isValidEmail(value)) {
                        return "Enter valid email";
                      }
                      return null;
                    },
                  ),
                  const AppPadding(),
                  TextFormField(
                    controller: passwordController,
                    obscureText: isObscure ? true : false,
                    maxLength: 12,
                    decoration: InputDecoration(
                        counterText: "",
                        hintText: "Password",
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isObscure = !isObscure;
                              });
                            },
                            icon: isObscure
                                ? Icon(
                                    Icons.visibility,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .primaryContainer
                                        .withOpacity(0.6),
                                  )
                                : Icon(
                                    Icons.visibility_off,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .primaryContainer
                                        .withOpacity(0.6),
                                  ))),
                  ),
                  const AppPadding(
                    multipliedBy: 3,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              loading = true;
                            });

                            if (formKey.currentState?.validate() == true) {
                              email = emailController.text;
                              pass = passwordController.text;
                              BlocProvider.of<FirebaseAuthBloc>(context).add(
                                  FirebaseAuthEvent.signIn(
                                      email: email, password: pass));
                            }
                          },
                          child: Text(loading ? "Loading..." : "Login"))),
                  const AppPadding(
                    multipliedBy: 3,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: InkWell(
                        onTap: () => Navigator.pushNamed(
                            context, CustomRouter.signUpScreen),
                        child: Center(
                          child: Text(
                            "Don't have an account? click to Sign Up",
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(
                                    decoration: TextDecoration.underline),
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
