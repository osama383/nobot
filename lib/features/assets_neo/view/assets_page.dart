import 'package:flutter/material.dart';
import 'package:nobot/core/scaffold/nav/nav.dart';
import 'package:nobot/core/scaffold/view/base_scaffold.dart';
import 'package:nobot/core/util/extensions/extensions.dart';

import '../../auth/data/auth.dart';

class AssetsPage extends StatelessWidget {
  final Auth auth;
  const AssetsPage(this.auth, {super.key});

  @override
  Widget build(BuildContext context) {
    final labels = context.localizationLabels;
    return BaseScaffold(
      auth,
      title: labels.navItem(NavItem.assets),
      selectedItem: NavItem.assets,
      body: const Row(
        children: [
          Expanded(child: _Depots()),
          SizedBox(width: 16),
          Expanded(child: _Vehicles()),
          SizedBox(width: 16),
          Expanded(child: _Containers()),
        ],
      ),
    );
  }
}

class _Containers extends StatelessWidget {
  const _Containers();

  @override
  Widget build(BuildContext context) {
    final labels = context.localizationLabels;
    return Card.filled(
      child: Column(
        children: [
          ListTile(
            title: Text(
              labels.containers,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
        ],
      ),
    );
  }
}

class _Vehicles extends StatelessWidget {
  const _Vehicles();

  @override
  Widget build(BuildContext context) {
    final labels = context.localizationLabels;
    return Card.filled(
      child: Column(
        children: [
          ListTile(
            title: Text(
              labels.vehicles,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
        ],
      ),
    );
  }
}

class _Depots extends StatelessWidget {
  const _Depots();

  @override
  Widget build(BuildContext context) {
    final labels = context.localizationLabels;
    return Card.filled(
      child: Column(
        children: [
          ListTile(
            title: Text(
              labels.depots,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
        ],
      ),
    );
  }
}
