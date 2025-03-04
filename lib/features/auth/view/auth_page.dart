import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nobot/features/auth/application/auth_page/auth_page_bloc.dart';

import 'login/login_form.dart';
import 'signup/signup_form.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthPageBloc(),
      child: BlocBuilder<AuthPageBloc, AuthPageState>(
        builder: (context, state) {
          return Scaffold(
            body: Center(
              child: switch (state.mode) {
                AuthMode.signIn => const LoginForm(),
                AuthMode.signUp => const SignupForm(),
                AuthMode.requestPasswordRest => throw UnimplementedError(),
              },
            ),
          );
        },
      ),
    );
  }
}
