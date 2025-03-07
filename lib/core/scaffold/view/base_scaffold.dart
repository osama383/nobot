import 'package:flutter/material.dart';
import 'package:nobot/core/util/extensions/extensions.dart';

import '../../../features/auth/data/auth.dart';
import '../../../injection.dart';
import '../nav/nav.dart';
import '../nav/nav_drawer.dart';
import '../nav/nav_rail.dart';
import 'common_app_bar.dart';

class BaseScaffold extends StatefulWidget {
  final Auth auth;
  final String title;
  final Widget body;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final NavItem selectedItem;
  final List<Widget>? actions;
  final Widget? titleWidget;
  final Widget? bottomNavigationBar;
  final double? scrolledUnderElevation;

  const BaseScaffold(
    this.auth, {
    required this.title,
    required this.selectedItem,
    required this.body,
    this.bottomNavigationBar,
    this.titleWidget,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.actions,
    this.scrolledUnderElevation = 0,
    super.key,
  });
  @override
  State<BaseScaffold> createState() => _BaseScaffoldState();
}

class _BaseScaffoldState extends State<BaseScaffold> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        key: _scaffoldKey,
        drawer: context.useMobileLayout &&
                widget.auth.currentUser!.permissions.isNotEmpty
            ? NavDrawer(
                Nav(getIt()),
                selectedItem: widget.selectedItem,
              )
            : null,
        bottomNavigationBar: widget.bottomNavigationBar,
        body: Row(
          children: [
            if (!context.useMobileLayout &&
                widget.auth.currentUser!.permissions.isNotEmpty)
              Navrail(
                Nav(getIt()),
                selectedItem: widget.selectedItem,
              ),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: CommonAppBar(
                      widget.auth,
                      titleWidget: widget.titleWidget,
                      scaffoldKey: _scaffoldKey,
                      title: widget.title,
                      actions: widget.actions,
                      scrolledUnderElevation: widget.scrolledUnderElevation,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: context.useMobileLayout
                          ? const EdgeInsets.only(
                              left: 16,
                              right: 16,
                            )
                          : const EdgeInsets.only(
                              left: 24,
                              right: 24,
                            ),
                      alignment: Alignment.topCenter,
                      child: widget.body,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: widget.floatingActionButton,
        floatingActionButtonLocation: widget.floatingActionButtonLocation ??
            (context.useMobileLayout
                ? FloatingActionButtonLocation.endFloat
                : FloatingActionButtonLocation.endTop),
      ),
    );
  }
}
