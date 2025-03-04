import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nobot/core/models/email/email.dart';
import 'package:nobot/features/auth/bloc/login_form_bloc.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: _LoginForm(),
      ),
    );
  }
}

class _LoginForm extends StatefulWidget {
  const _LoginForm();

  @override
  State<_LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<_LoginForm> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginFormBloc(),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 500),
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _EmailInput(),
            SizedBox(height: 16),
            _PasswordInput(),
            SizedBox(height: 16),
            _Submit(),
          ],
        ),
      ),
    );
  }
}

class _EmailInput extends StatelessWidget {
  const _EmailInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginFormBloc, LoginFormState>(
      builder: (context, state) {
        return TextFormField(
          decoration: const InputDecoration(
            labelText: 'Email',
          ),
          autovalidateMode: state.showErrors
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          onChanged: (value) {
            context
                .read<LoginFormBloc>()
                .add(LoginFormEvent.onEmailInput(EmailAddress(value)));
          },
          validator: (_) {
            return state.email.value.fold(
              (failure) => failure.when(
                invalidFormat: (_) => 'Invalid format',
                empty: () => 'required',
              ),
              (_) => null,
            );
          },
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  const _PasswordInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginFormBloc, LoginFormState>(
      builder: (context, state) {
        return TextFormField(
          autovalidateMode: state.showErrors
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          decoration: const InputDecoration(
            labelText: 'Password',
          ),
          onChanged: (value) {
            context
                .read<LoginFormBloc>()
                .add(LoginFormEvent.onPasswordInput(value));
          },
          validator: (_) {
            return state.password.length < 5 ? 'Too short' : null;
            // return state.email.value.fold(
            //   (failure) => failure.asString,
            //   (_) => null,
            // );
          },
        );
      },
    );
  }
}

class _Submit extends StatelessWidget {
  const _Submit();

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        context.read<LoginFormBloc>().add(const LoginFormEvent.onSubmit());
      },
      child: const Text('Submit'),
    );
  }
}
