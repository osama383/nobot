import 'package:flutter/material.dart';

class CollectionInput extends StatelessWidget {
  final Set<String> values;
  const CollectionInput(this.values, {super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        ...values.map(
          (e) => ActionChip(
            side: BorderSide.none,
            label: Text(
              e,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            avatarBoxConstraints: const BoxConstraints(),
            backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          ),
        ),
      ],
    );
  }
}
