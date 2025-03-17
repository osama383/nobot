import 'package:flutter/material.dart';
import 'package:nobot/core/util/extensions/extensions.dart';

import '../../../../core/models/product/product.dart';

class LastServiceWidget extends StatelessWidget {
  final Product product;
  const LastServiceWidget(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    final labels = context.localizationLabels;
    return ListTile(
      title: Text(labels.lastService),
      subtitle: Text(
        product.lastServiceOption.fold(
          () => labels.notAvailableSymbol,
          (date) => date.toNumericMonthDayYear,
        ),
      ),
    );
  }
}
