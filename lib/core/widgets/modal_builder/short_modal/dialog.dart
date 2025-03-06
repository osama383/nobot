part of '../modal_builder.dart';

enum Dialogs {
  normal,
  expanded,
  large,
  extraLarge,
}

double width(
  BuildContext context,
  Dialogs dialogType,
) {
  if (context.windowClass == WindowClass.compact) {
    return context.width - 64;
  }

  switch (dialogType) {
    case Dialogs.normal:
      switch (context.windowClass) {
        case WindowClass.compact:
          return context.width - 64;
        case WindowClass.medium:
        case WindowClass.expanded:
        case WindowClass.large:
        case WindowClass.extraLarge:
          return 536;
      }
    case Dialogs.expanded:
      switch (context.windowClass) {
        case WindowClass.compact:
          return context.width - 64;
        case WindowClass.medium:
          return 536;
        case WindowClass.expanded:
        case WindowClass.large:
        case WindowClass.extraLarge:
          return 776;
      }
    case Dialogs.large:
      switch (context.windowClass) {
        case WindowClass.compact:
          return context.width - 64;
        case WindowClass.medium:
          return 536;
        case WindowClass.expanded:
          return 776;
        case WindowClass.large:
        case WindowClass.extraLarge:
          return 1136;
      }
    case Dialogs.extraLarge:
      switch (context.windowClass) {
        case WindowClass.compact:
          return context.width - 64;
        case WindowClass.medium:
          return 536;
        case WindowClass.expanded:
          return 776;
        case WindowClass.large:
          return 1136;
        case WindowClass.extraLarge:
          return 1536;
      }
  }
}

class _Dialog<T extends Bloc> extends StatelessWidget {
  final ShortModal<T> modalBuilder;
  const _Dialog(this.modalBuilder);

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return StreamBuilder<bool>(
          stream: modalBuilder.isBusyStream,
          builder: (context, snapshot) {
            return Stack(
              children: [
                AlertDialog(
                  title: Text(modalBuilder.title(context)),
                  content: SingleChildScrollView(
                    child: SizedBox(
                      width: width(context, modalBuilder.dialogType),
                      child: modalBuilder.content(context),
                    ),
                  ),
                  actions: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        if (modalBuilder.tertiaryAction(context) != null) ...[
                          modalBuilder.tertiaryAction(context)!,
                          const Spacer(),
                        ],
                        modalBuilder.secondaryAction(context),
                        modalBuilder.primaryAction(context),
                      ],
                    ),
                  ],
                ),
                WipOverlay(snapshot.data ?? false),
              ],
            );
          },
        );
      },
    );
  }
}
