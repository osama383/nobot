import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nobot/injection.dart';

import '../../../../core/models/email/email.dart';
import '../../../../core/models/password/password.dart';
import '../../application/auth_page/auth_page_bloc.dart';
import '../../application/login/login_form_bloc.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginFormBloc(getIt()),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 500),
        child: const AutofillGroup(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _EmailInput(),
              SizedBox(height: 16),
              _PasswordInput(),
              SizedBox(height: 16),
              _Submit(),
              SizedBox(height: 16),
              _GoToSignup(),
            ],
          ),
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
          autofillHints: const [AutofillHints.email],
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
          autofillHints: const [AutofillHints.password],
          obscureText: true,
          decoration: const InputDecoration(
            labelText: 'Password',
          ),
          onChanged: (value) {
            context
                .read<LoginFormBloc>()
                .add(LoginFormEvent.onPasswordInput(Password(value)));
          },
          validator: (_) {
            return state.password.value.fold(
              (failure) => failure.when(
                tooShort: (_) => 'Too short',
              ),
              (_) => null,
            );
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

class _GoToSignup extends StatelessWidget {
  const _GoToSignup();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context
            .read<AuthPageBloc>()
            .add(const AuthPageEvent.onModeChange(AuthMode.signUp));
      },
      child: const Text('Go to signup'),
    );
  }
}
