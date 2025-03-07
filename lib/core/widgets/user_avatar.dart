import 'package:flutter/material.dart';
import 'package:nobot/core/widgets/menu_chip.dart';

import '../../features/auth/data/auth.dart';

class UserAvatar extends StatelessWidget {
  final Auth auth;
  const UserAvatar(this.auth, {super.key});

  @override
  Widget build(BuildContext context) {
    return MenuChip(
      title: auth.currentUser!.email.getOrCrash,
      menuChildren: [
        MenuItemButton(
          child: const Text('Create new project'),
          onPressed: () {},
        ),
        const PopupMenuDivider(),
        MenuItemButton(
          child: const Text('Signout'),
          onPressed: () {
            auth.logout();
          },
        ),
      ],
    );
  }
}
