import 'package:flutter/material.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';

class MenuChip extends StatelessWidget {
  final String title;
  final Widget? icon;
  final List<Widget> menuChildren;
  final double? minWidth;
  final bool disabled;

  const MenuChip({
    super.key,
    required this.title,
    required this.menuChildren,
    this.icon,
    this.minWidth,
    this.disabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return MenuAnchor(
      consumeOutsideTap: true,
      crossAxisUnconstrained: false,
      style: const MenuStyle(
        minimumSize: WidgetStatePropertyAll(Size(240, 100)),
      ),
      menuChildren: menuChildren.map((e) {
        return PointerInterceptor(
          child: ConstrainedBox(
            constraints: BoxConstraints(minWidth: minWidth ?? 100),
            child: e,
          ),
        );
      }).toList(),
      builder: (context, menuController, child) => ActionChip(
        side: BorderSide.none,
        label: icon ?? const Icon(Icons.arrow_drop_down),
        labelPadding: EdgeInsets.zero,
        avatar: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        avatarBoxConstraints: const BoxConstraints(),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        onPressed: disabled
            ? null
            : () {
                if (menuController.isOpen) {
                  menuController.close();
                } else {
                  menuController.open();
                }
              },
      ),
    );
  }
}
