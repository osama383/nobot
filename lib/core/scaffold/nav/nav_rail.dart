import 'package:flutter/material.dart';
import 'package:nobot/core/util/extensions/extensions.dart';

import 'nav.dart';

class Navrail extends StatelessWidget {
  final Nav nav;
  final NavItem selectedItem;
  const Navrail(
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
        return NavigationRail(
          backgroundColor: context.colorScheme.surfaceContainerHighest,
          groupAlignment: -0.95,
          selectedIndex: nav.myNavItems.toList().indexOf(selectedItem),
          onDestinationSelected: (int index) {
            final item = nav.myNavItems.toList()[index];
            item.goToPage(context);
          },
          labelType: NavigationRailLabelType.all,
          destinations: <NavigationRailDestination>[
            ...nav.myNavItems.map((element) {
              return NavigationRailDestination(
                icon: element.unselectedIcon,
                selectedIcon: element.selectedIcon,
                label: Text(labels.navItem(element)),
              );
            }),
          ],
        );
      },
    );
  }
}
