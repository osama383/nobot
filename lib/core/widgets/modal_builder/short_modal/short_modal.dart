part of '../modal_builder.dart';

enum ShortModals { dialog, bottomSheet }

class ShortModalConfiguration {
  final ShortModals mobile;
  final ShortModals tabletAndDesktop;

  ShortModalConfiguration({
    required this.mobile,
    required this.tabletAndDesktop,
  });
}

abstract class ShortModal<T extends Bloc> extends ModalBuilder<T> {
  ShortModalConfiguration configure() {
    return ShortModalConfiguration(
      mobile: ShortModals.bottomSheet,
      tabletAndDesktop: ShortModals.dialog,
    );
  }

  String title(BuildContext context);
  Widget primaryAction(BuildContext context);
  Widget? tertiaryAction(BuildContext context) => null;
  Widget secondaryAction(BuildContext context) {
    final labels = context.localizationLabels;
    return TextButton(
      onPressed: Navigator.of(context).pop,
      child: Text(labels.cancel),
    );
  }

  bool get showModalSheetDragHandle => true;
  Dialogs get dialogType => Dialogs.normal;

  //override to return false to show shorter modal sheets
  bool get modalSheetIsScrollControlled => true;

  @override
  Future show() async {
    final context = navigatorKey.currentContext!;
    final modal = context.useMobileLayout
        ? configure().mobile
        : configure().tabletAndDesktop;

    return await switch (modal) {
      ShortModals.bottomSheet => showModalBottomSheet(
          isScrollControlled: modalSheetIsScrollControlled,
          showDragHandle: showModalSheetDragHandle,
          constraints: BoxConstraints(
            maxHeight: context.maxHeight - 72,
          ),
          context: context,
          builder: (_) => bloc == null
              ? _BottomSheet(this)
              : BlocProvider.value(
                  value: bloc!,
                  child: _BottomSheet(this),
                ),
        ),
      ShortModals.dialog => showDialog(
          context: context,
          builder: (context) => bloc == null
              ? _Dialog(this)
              : BlocProvider.value(
                  value: bloc!,
                  child: _Dialog(this),
                ),
        ),
    };
  }
}
