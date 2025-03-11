import 'package:flutter/material.dart';

class HoverBuilder extends StatefulWidget {
  final Widget Function(BuildContext context, bool isHovering) builder;
  const HoverBuilder({super.key, required this.builder});

  @override
  State<HoverBuilder> createState() => _HoverBuilderState();
}

class _HoverBuilderState extends State<HoverBuilder> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        if (!context.mounted) return;
        setState(() => isHovering = true);
      },
      onExit: (_) {
        if (!context.mounted) return;
        setState(() => isHovering = false);
      },
      child: widget.builder(context, isHovering),
    );
  }
}
