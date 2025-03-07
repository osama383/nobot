import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nobot/core/util/extensions/extensions.dart';

import '../../../core/scaffold/nav/nav.dart';
import '../../../core/scaffold/view/base_scaffold.dart';
import '../../../injection.dart';
import '../../auth/data/auth.dart';
import '../controller/assets_bloc/assets_bloc.dart';
import 'widgets/containers.dart';
import 'widgets/depots.dart';
import 'widgets/vehicles.dart';

class AssetsPage extends StatelessWidget {
  final Auth auth;
  const AssetsPage(this.auth, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AssetsBloc(sl())..add(const AssetsEvent.started()),
      child: BaseScaffold(
        auth,
        title: 'Assets',
        selectedItem: NavItem.assets,
        body: context.useMobileLayout
            ? const SingleChildScrollView(
                child: Column(
                  children: [
                    Depots(),
                    SizedBox(height: 12),
                    Vehicles(),
                    SizedBox(height: 12),
                    Containers(),
                    SizedBox(height: 16),
                  ],
                ),
              )
            : const Padding(
                padding: EdgeInsets.only(bottom: 24),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: Depots()),
                    SizedBox(width: 12),
                    Expanded(child: Vehicles()),
                    SizedBox(width: 12),
                    Expanded(child: Containers()),
                  ],
                ),
              ),
      ),
    );
  }
}
