import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart' hide FormState;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nobot/core/models/customer/customer.dart';
import 'package:nobot/core/models/email/email.dart';
import 'package:nobot/core/models/product/product.dart';
import 'package:nobot/core/models/product/service_status.dart';
import 'package:nobot/core/models/value_object/value_object.dart';
import 'package:nobot/core/widgets/form/bloc/form_bloc.dart';
import 'package:nobot/core/widgets/modal_builder/modal_builder.dart';
import 'package:nobot/core/widgets/user_avatar.dart';

import '../../auth/data/auth.dart';

class HomePage extends StatelessWidget {
  final Auth auth;
  const HomePage(this.auth, {super.key});

  @override
  Widget build(BuildContext context) {
    final customer = Customer(
      id: '',
      name: VString('Vikings'),
      products: {},
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [UserAvatar(auth)],
      ),
      body: Center(
        child: Column(
          children: [
            const FormOne(),
            Form(
              inputs: [Input.vstring(customer.name)],
              onSubmit: (inputs) {
                print(customer.copyWith(name: inputs.first.value as VString));
              },
            ).build(context),
            FilledButton(
              onPressed: () {
                FirebaseFirestore.instance
                    .collection('random')
                    .add({'data': 'data'});
              },
              child: const Text('creatge random dat'),
            ),
          ],
        ),
      ),
    );
  }
}

class Form {
  final List<Input<ValueObject>> inputs;
  final void Function(List<Input<ValueObject>> inputs) onSubmit;

  Form({required this.inputs, required this.onSubmit});

  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FormBloc(inputs: inputs, onSubmit: onSubmit),
      child: BlocBuilder<FormBloc, FormState>(
        builder: (context, state) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 16),
              ...state.inputs.map((e) => e.build(context)),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () {
                  context.read<FormBloc>().add(OnFormSubmitEvent());
                },
                child: const Text('Save'),
              ),
            ],
          );
        },
      ),
    );
  }
}

class FormOne extends StatelessWidget {
  const FormOne({super.key});

  @override
  Widget build(BuildContext context) {
    final customer = Customer(
      id: '',
      name: VString('input'),
      products: {
        Grease(
          status: ServiceStatus.active,
          dueDate: DateTime.now(),
          lastService: DateTime.now(),
          serviceNotificationEmails: {
            EmailAddress('some@email.com'),
          },
        )
      },
    );
    return Form(
      inputs: customer.products.first.serviceNotificationEmails.map(
        (e) {
          return Input.email(e);
        },
      ).toList(),
      onSubmit: (inputs) {
        final updatedCustomer = customer.copyWith(
          products: {
            customer.products.first.copyWith(
              serviceNotificationEmails:
                  inputs.map((e) => e.value as EmailAddress).toSet(),
            ),
          },
        );
        print(updatedCustomer);
      },
    ).build(context);
  }
}
