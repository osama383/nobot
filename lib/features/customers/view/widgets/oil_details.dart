import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nobot/features/customers/controller/customer_details/customer_details_bloc.dart';
import 'package:nobot/features/customers/view/widgets/due_date.dart';
import 'package:nobot/features/customers/view/widgets/service_emails_widget.dart';

import '../../../../core/models/product/product.dart';
import 'last_service_date_widget.dart';

class UcoDetails extends StatelessWidget {
  final Uco uco;
  const UcoDetails(this.uco, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerDetailsBloc, CustomerDetailsState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            children: [
              DueDateWidget(uco),
              LastServiceWidget(uco),
              ServiceEmailsWidget(uco),
            ],
          ),
        );
      },
    );
  }
}
