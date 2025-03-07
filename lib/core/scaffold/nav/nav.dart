import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../features/auth/data/auth.dart';
import '../../models/user/permission.dart';
import '../../routes/routes.dart';

class Nav {
  final Auth auth;

  Nav(this.auth) {
    auth.currentUserStream
        .map((e) => e!.permissions)
        .distinct()
        .listen((permissions) {
      myNavItemsStreamController.sink.add(myNavItems);
    });
  }

  StreamController<Set<NavItem>> myNavItemsStreamController =
      StreamController();

  Stream<Set<NavItem>> get myNavItemsStream =>
      myNavItemsStreamController.stream;

  Set<NavItem> get myNavItems {
    if (auth.currentUser == null) return {};
    final items = {NavItem.home}..addAll(
        auth.currentUser!.permissions.map((e) {
          return switch (e) {
            Permission.trips => NavItem.trips,
            Permission.customers => NavItem.customers,
            Permission.reports => NavItem.reports,
            Permission.sales => NavItem.sales,
            Permission.assets => NavItem.assets,
            Permission.settings => NavItem.settings,
          };
        }).toSet(),
      );

    return items;
  }
}

enum NavItem {
  home(
    unselectedIcon: Icon(Icons.home_outlined),
    selectedIcon: Icon(Icons.home),
  ),
  trips(
    unselectedIcon: Icon(Icons.route_outlined),
    selectedIcon: Icon(Icons.route),
  ),
  customers(
    unselectedIcon: Icon(Icons.group_outlined),
    selectedIcon: Icon(Icons.group),
  ),
  reports(
    unselectedIcon: Icon(Icons.summarize_outlined),
    selectedIcon: Icon(Icons.summarize),
  ),
  sales(
    unselectedIcon: Icon(Icons.attach_money_outlined),
    selectedIcon: Icon(Icons.attach_money),
  ),
  assets(
    unselectedIcon: Icon(Icons.dashboard_outlined),
    selectedIcon: Icon(Icons.dashboard),
  ),
  settings(
    unselectedIcon: Icon(Icons.settings_outlined),
    selectedIcon: Icon(Icons.settings),
  );

  const NavItem({
    required this.unselectedIcon,
    required this.selectedIcon,
  });

  final Icon unselectedIcon;
  final Icon selectedIcon;
}

extension NavItemExtension on NavItem {
  void goToPage(BuildContext context) {
    switch (this) {
      case NavItem.home:
        HomePageRoute().go(context);
      case NavItem.trips:
        HomePageRoute().go(context);
      case NavItem.customers:
        HomePageRoute().go(context);
      case NavItem.reports:
        HomePageRoute().go(context);
      case NavItem.sales:
        HomePageRoute().go(context);
      case NavItem.assets:
        AssetsPageRoute().go(context);
      case NavItem.settings:
        HomePageRoute().go(context);
    }
  }
}
