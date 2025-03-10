import 'package:flutter/material.dart' hide FormState;
import 'package:nobot/core/scaffold/nav/nav.dart';

import '../../../core/scaffold/view/base_scaffold.dart';
import '../../auth/data/auth.dart';

class HomePage extends StatelessWidget {
  final Auth auth;
  const HomePage(this.auth, {super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      auth,
      title: 'Home',
      selectedItem: NavItem.home,
      body: const Placeholder(),
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
