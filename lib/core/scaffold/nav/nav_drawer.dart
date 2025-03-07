import 'package:flutter/material.dart';
import 'package:nobot/core/util/extensions/extensions.dart';

import 'nav.dart';

class NavDrawer extends StatelessWidget {
  final Nav nav;
  final NavItem selectedItem;
  const NavDrawer(
    this.nav, {
    super.key,
    required this.selectedItem,
  });

  @override
  Widget build(BuildContext context) {
    final labels = context.localizationLabels;
    return StreamBuilder<Set<NavItem>>(
      stream: nav.myNavItemsStream,
      builder: (context, snapshot) {
        return NavigationDrawer(
          onDestinationSelected: (int index) {
            final item = nav.myNavItems.toList()[index];
            item.goToPage(context);
          },
          selectedIndex: nav.myNavItems.toList().indexOf(selectedItem),
          children: <Widget>[
            const SizedBox(height: 15),
            ...nav.myNavItems.map((navItem) {
              return NavigationDrawerDestination(
                label: Text(labels.navItem(navItem)),
                icon: navItem.unselectedIcon,
                selectedIcon: navItem.selectedIcon,
              );
            }),
          ],
        );
      },
    );
  }
}
