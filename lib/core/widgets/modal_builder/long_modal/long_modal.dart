part of '../modal_builder.dart';

int openLongModalsCount = 0;

class LongModalConfigutation {
  final double sideSheetWidth;
  final Widget? bottomWidget;
  final bool useDefaultContentPadding;

  LongModalConfigutation({
    this.bottomWidget,
    this.sideSheetWidth = 400,
    this.useDefaultContentPadding = true,
  });
}

abstract class LongModal<T extends Bloc> extends ModalBuilder<T> {
  Widget title(BuildContext context);
  void popWithValue(BuildContext context);

  LongModalConfigutation configure(BuildContext context) =>
      LongModalConfigutation();

  @override
  Future show() async {
    openLongModalsCount += 1;
    final context = navigatorKey.currentContext!;
    if (context.useMobileLayout) {
      final result = await showDialog(
        context: context,
        builder: (context) {
          if (bloc == null) {
            return _Common(
              popWithValue: (context) => popWithValue(context),
              child: _FullSCreenDialog(
                this,
                configure(context),
              ),
            );
          }
          return BlocProvider.value(
            value: bloc!,
            child: _Common(
              popWithValue: (context) => popWithValue(context),
              child: _FullSCreenDialog(
                this,
                configure(context),
              ),
            ),
          );
        },
      );
      openLongModalsCount -= 1;
      return result;
    } else {
      final result = await SideSheet.right(
        sheetColor: context.colorScheme.surfaceContainerHighest,
        context: context,
        width: configure(context).sideSheetWidth,
        body: bloc == null
            ? _Common(
                popWithValue: (context) => popWithValue(context),
                child: _SideSheet<T>(
                  this,
                  configure(context),
                ),
              )
            : BlocProvider.value(
                value: bloc!,
                child: _Common(
                  popWithValue: (context) => popWithValue(context),
                  child: _SideSheet<T>(
                    this,
                    configure(context),
                  ),
                ),
              ),
      );
      openLongModalsCount -= 1;
      return result;
    }
  }
}

class _Common extends StatelessWidget {
  final void Function(BuildContext context) popWithValue;
  final Widget child;
  const _Common({required this.popWithValue, required this.child});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async {
        if (didPop) return;
        popWithValue(context);
      },
      child: child,
    );
  }
}

class DefaultBottomWidget extends StatelessWidget {
  final Widget child;

  const DefaultBottomWidget({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Center(child: child),
    );
  }
}
