import 'package:flutter/material.dart';
import 'package:nobot/core/util/extensions/extensions.dart';
import 'package:nobot/core/widgets/user_avatar.dart';

import '../../../features/auth/data/auth.dart';

class CommonAppBar extends StatelessWidget {
  const CommonAppBar(
    this.auth, {
    super.key,
    required this.scaffoldKey,
    this.isDriverView = false,
    this.title = '',
    this.actions,
    this.titleWidget,
    this.scrolledUnderElevation,
  });

  final Auth auth;
  final GlobalKey<ScaffoldState> scaffoldKey;
  final bool isDriverView;
  final String title;
  final Widget? titleWidget;
  final List<Widget>? actions;
  final double? scrolledUnderElevation;

  @override
  Widget build(BuildContext context) {
    var leading =
        context.useMobileLayout && auth.currentUser!.permissions.isNotEmpty
            ? IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  scaffoldKey.currentState?.openDrawer();
                },
              )
            : null;
    return AppBar(
      leadingWidth: 48,
      titleSpacing: 0,
      centerTitle: context.useMobileLayout
          ? auth.currentUser!.permissions.isNotEmpty
              ? false
              : true
          : false,
      leading: leading,
      automaticallyImplyLeading: false,
      backgroundColor: context.colorScheme.surfaceContainerHighest.withAlpha(0),
      elevation: 0,
      scrolledUnderElevation: scrolledUnderElevation,
      title: titleWidget ??
          (context.useMobileLayout
              ? Text(
                  title,
                  style: Theme.of(context).textTheme.headlineLarge,
                )
              : Padding(
                  padding: const EdgeInsets.only(left: 39),
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                )),
      actions: [
        ...actions ?? [],
        UserAvatar(auth),
      ],
    );
  }
}
