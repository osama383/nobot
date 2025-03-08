import 'package:flutter/material.dart' hide FormState;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nobot/core/models/assets/assets.dart';
import 'package:nobot/core/models/customer/customer.dart';
import 'package:nobot/core/models/value_object/value_object.dart';
import 'package:nobot/core/scaffold/nav/nav.dart';
import 'package:nobot/core/widgets/form/bloc/form_bloc.dart';
import 'package:nobot/injection.dart';

import '../../../core/repository.dart';
import '../../../core/scaffold/view/base_scaffold.dart';
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
    final vehicle = Vehicle(
      id: '',
      name: VString('Mustang'),
      decalNumber: 'decal',
    );
    return BaseScaffold(
      auth,
      title: 'Home',
      selectedItem: NavItem.home,
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 300),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // FlutterForm(
              //   inputs: [Input.vstring(customer.name)],
              //   onSubmit: (inputs) {
              //     // print(customer.copyWith(name: inputs.first.value as VString));
              //   },
              // ).build(context),
              // const SizedBox(height: 32),
              // FlutterForm(
              //   inputs: [
              //     Input.vstring(vehicle.name),
              //   ],
              //   onSubmit: (inputs) {
              //     // print(vehicle
              //     //     .copyWith(name: inputs.first.value as VString)
              //     //     .toMap());
              //   },
              // ).build(context),
              // FilledButton(
              //   onPressed: () {
              //     sl<Repository>().create<Asset>(
              //       Entities.assets,
              //       Vehicle(
              //         id: 'this is just an id',
              //         name: VString('tundra'),
              //         decalNumber: 'decal number',
              //       ),
              //     );
              //   },
              //   child: const Text('Add vehicle'),
              // ),
              // FilledButton(
              //   onPressed: () {
              //     sl<Repository>().create<Asset>(
              //       Entities.assets,
              //       Depot(
              //         id: 'this is just an id',
              //         name: VString('tundra'),
              //         address: 'decal number',
              //       ),
              //     );
              //   },
              //   child: const Text('Add depot'),
              // ),
              // FilledButton(
              //   onPressed: () {
              //     sl<Repository>().list<Asset>(Entities.assets);
              //   },
              //   child: const Text('creatge random dat'),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

// class FlutterForm {
//   final List<Input<ValueObject>> inputs;
//   final void Function(List<Input<ValueObject>> inputs) onSubmit;

//   FlutterForm({required this.inputs, required this.onSubmit});

//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => FormBloc(inputs: inputs, submitHook: onSubmit),
//       child: BlocBuilder<FormBloc, FormState>(
//         builder: (context, state) {
//           return Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               const SizedBox(height: 16),
//               ...state.inputs.map((e) => e.build(context)),
//               const SizedBox(height: 16),
//               FilledButton(
//                 onPressed: () {
//                   context.read<FormBloc>().add(OnFormSubmitEvent());
//                 },
//                 child: const Text('Save'),
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }
