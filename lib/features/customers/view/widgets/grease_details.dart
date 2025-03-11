import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nobot/features/customers/view/widgets/last_service_date_widget.dart';

import '../../../../core/models/product/product.dart';
import '../../controller/customer_details/customer_details_bloc.dart';
import 'due_date.dart';

class GreaseDetails extends StatelessWidget {
  final Grease grease;
  const GreaseDetails(this.grease, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerDetailsBloc, CustomerDetailsState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            children: [
              DueDateWidget(grease),
              LastServiceWidget(grease),
            ],
          ),
        );
      },
    );
  }
}
