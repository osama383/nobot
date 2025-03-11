import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:nobot/core/localization/lang/en.dart';
import 'package:nobot/core/scaffold/view/base_scaffold.dart';
import 'package:nobot/core/util/extensions/extensions.dart';
import 'package:nobot/core/widgets/wip_overlay.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';

import '../../../../core/models/assets/assets.dart';
import '../../../../core/models/customer/customer.dart';
import '../../../../core/models/depot_access_policy/depot_access_policy.dart';
import '../../../../core/table-builder/controller/table_builder_bloc/table_builder_bloc.dart';
import '../../../../core/table-builder/view/actions/active_filters.dart';
import '../../../../core/table-builder/view/actions/mega_menu.dart';
import '../../../../core/table-builder/view/table_builder/table_builder.dart';
import '../../../../core/widgets/menu_chip.dart';
import '../../../../injection.dart';
import '../../../auth/data/auth.dart';
import '../../controller/customers_bloc/customers_bloc.dart';
import 'customers_table.dart';

part 'customers_table_actions.dart';

class CustomersPage extends StatefulWidget {
  final Auth auth;
  const CustomersPage(this.auth, {super.key});

  @override
  State<CustomersPage> createState() => _CustomersPageState();
}

class _CustomersPageState extends State<CustomersPage> {
  @override
  Widget build(BuildContext context) {}
}
