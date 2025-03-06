part of '../modal_builder.dart';

class _SideSheet<T extends Bloc> extends StatelessWidget {
  final LongModal<T> modalBuilder;
  final LongModalConfigutation configuration;
  const _SideSheet(
    this.modalBuilder,
    this.configuration,
  );

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return PointerInterceptor(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8,
                      right: 14,
                      top: 9,
                      bottom: 9,
                    ),
                    child: AppBar(
                      backgroundColor:
                          context.colorScheme.surfaceContainerHighest,
                      centerTitle: false,
                      automaticallyImplyLeading: false,
                      leading: openLongModalsCount > 1
                          ? IconButton(
                              onPressed: () => modalBuilder.popWithValue(
                                context,
                              ),
                              icon: const Icon(Icons.arrow_back),
                            )
                          : null,
                      title: DefaultTextStyle(
                        style: Theme.of(context).textTheme.headlineMedium!,
                        child: modalBuilder.title(context),
                      ),
                      actions: [
                        if (openLongModalsCount == 1)
                          IconButton(
                            onPressed: () => modalBuilder.popWithValue(
                              context,
                            ),
                            icon: const Icon(Icons.close),
                          ),
                      ],
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(
                  //     left: 24,
                  //     top: 18,
                  //     right: 24,
                  //   ),
                  //   child: Padding(
                  //     padding: const EdgeInsets.only(bottom: 16),
                  //     child: Row(
                  //       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         if (openLongModalsCount > 1)
                  //           IconButton(
                  //             onPressed: () => modalBuilder.popWithValue(
                  //               context,
                  //             ),
                  //             icon: const Icon(Icons.arrow_back),
                  //           ),
                  //         Padding(
                  //           padding: const EdgeInsets.only(top: 4),
                  //           child: DefaultTextStyle(
                  //             style: context.textTheme.headlineMedium!,
                  //             child: modalBuilder.title(context),
                  //           ),
                  //         ),
                  //         const Spacer(),
                  //         if (openLongModalsCount == 1)
                  //           IconButton(
                  //             onPressed: () => modalBuilder.popWithValue(
                  //               context,
                  //             ),
                  //             icon: const Icon(Icons.close),
                  //           ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
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
              StreamBuilder<bool>(
                stream: modalBuilder.isBusyStream.distinct(),
                builder: (context, snapshot) {
                  return WipOverlay(snapshot.data ?? false);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
