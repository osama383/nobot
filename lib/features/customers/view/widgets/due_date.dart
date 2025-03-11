import 'package:flutter/material.dart';
import 'package:nobot/core/util/extensions/extensions.dart';

import '../../../../core/models/product/product.dart';

class DueDateWidget extends StatelessWidget {
  final Product product;
  const DueDateWidget(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    final labels = context.localizationLabels;
    return ListTile(
      title: Text(labels.dueDate),
      subtitle: Text(
        product.dueDate.fold(
          () => labels.notAvailableSymbol,
          (date) => date.toNumericMonthDayYear,
        ),
      ),
    );
  }
}
