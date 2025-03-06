part of '../modal_builder.dart';

class _BottomSheet<T extends Bloc> extends StatelessWidget {
  final ShortModal<T> modalBuilder;
  const _BottomSheet(this.modalBuilder);

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return StreamBuilder<bool>(
          stream: modalBuilder.isBusyStream.distinct(),
          builder: (context, snapshot) {
            return Stack(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 8.0,
                        bottom: 16,
                        left: 24,
                        right: 24,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          modalBuilder.title(context),
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: modalBuilder.content(context),
                        ),
                      ),
                    ),
                    Container(
                      height: 72,
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            if (modalBuilder.tertiaryAction(context) !=
                                null) ...[
                              modalBuilder.tertiaryAction(context)!,
                              const Spacer(),
                            ],
                            modalBuilder.secondaryAction(context),
                            modalBuilder.primaryAction(context),
                          ],
                        ),
                      ),
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
