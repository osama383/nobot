import 'package:flutter/src/widgets/framework.dart';
import 'package:nobot/core/widgets/form/bloc/form_bloc.dart';
import 'package:nobot/core/widgets/modal_builder/modal_builder.dart';

class VehicleForm extends ShortModal<FormBloc> {
  @override
  FormBloc? get bloc => throw UnimplementedError();

  @override
  Widget content(BuildContext context) {}

  @override
  Stream<bool> get isBusyStream =>
      bloc!.stream.map((e) => e.submissionInProgress);

  @override
  Widget primaryAction(BuildContext context) {}

  @override
  String title(BuildContext context) {}
}
