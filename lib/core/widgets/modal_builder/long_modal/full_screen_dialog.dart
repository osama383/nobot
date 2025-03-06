part of '../modal_builder.dart';

class _FullSCreenDialog<T extends Bloc> extends StatelessWidget {
  final LongModal<T> modalBuilder;
  final LongModalConfigutation configuration;
  const _FullSCreenDialog(
    this.modalBuilder,
    this.configuration,
  );

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Stack(
          children: [
            Dialog.fullscreen(
              child: Column(
                children: [
                  SizedBox(
                    height: 56,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                          ),
                          child: IconButton(
                            onPressed: () => modalBuilder.popWithValue(context),
                            icon: openLongModalsCount > 1
                                ? const Icon(Icons.arrow_back)
                                : const Icon(Icons.close),
                          ),
                        ),
                        DefaultTextStyle(
                          style: Theme.of(context).textTheme.headlineSmall!,
                          child: modalBuilder.title(context),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: configuration.useDefaultContentPadding
                        ? Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                            ),
                            child: modalBuilder.content(context),
                          )
                        : modalBuilder.content(context),
                  ),
                  if (configuration.bottomWidget != null)
                    configuration.bottomWidget!,
                ],
              ),
            ),
            StreamBuilder<bool>(
              stream: modalBuilder.isBusyStream.distinct(),
              builder: (context, snapshot) {
                return WipOverlay(snapshot.data ?? false);
              },
            ),
          ],
        );
      },
    );
  }
}
