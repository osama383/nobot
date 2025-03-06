import 'package:flutter/material.dart';

class WipOverlay extends StatelessWidget {
  final bool isBusy;

  const WipOverlay(this.isBusy, {super.key});

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isBusy,
      child: AnimatedContainer(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: isBusy ? Colors.grey.withAlpha(80) : Colors.transparent,
        ),
        duration: const Duration(milliseconds: 150),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Visibility(
          visible: isBusy,
          child: const Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}
