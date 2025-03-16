import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:nobot/core/widgets/form/view/inputs/collection_input/deletion_aware_ime_text_editing_controller.dart';
import 'package:super_editor/super_editor.dart';
import 'package:super_editor/super_text_field.dart';

class CollectionFormInput extends StatefulWidget {
  final Set<String> values;
  const CollectionFormInput(this.values, {super.key});

  @override
  State<CollectionFormInput> createState() => _CollectionFormInputState();
}

class _CollectionFormInputState extends State<CollectionFormInput> {
  late final Set<String> _tokens;
  late String? _focusedToken;
  late final DeletionAwareImeTextEditingController _textController;

  @override
  void initState() {
    _tokens = {}..addAll(widget.values);
    _textController = DeletionAwareImeTextEditingController(
      onDeletionAtBeginning: _removeToken,
    )..addListener(_onTextChange);
    super.initState();
  }

  void _onTextChange() {
    final text = _textController.text.text;
    if (_focusedToken != null) {
      setState(() => _focusedToken = null);
    }
    if (!text.endsWith(' ')) {
      return;
    }

    final token = text.trim();
    _textController.updateTextAndSelection(
      text: AttributedText(),
      selection: const TextSelection.collapsed(offset: 0),
    );
    setState(() {
      _tokens.add(token);
    });
  }

  void _removeToken() {
    if (_tokens.isEmpty) return;
    setState(() {
      if (_focusedToken == null) {
        _focusedToken = _tokens.last;
        return;
      }
      _tokens.remove(_focusedToken);
      _focusedToken = null;
    });
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CollectionInput(
      spacing: 8,
      runSpacing: 8,
      children: [
        ..._tokens.map(
          (e) => ActionChip(
            side: BorderSide.none,
            label: Text(
              e,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            avatarBoxConstraints: const BoxConstraints(),
            backgroundColor: e == _focusedToken
                ? Colors.white.withOpacity(0.2)
                : Theme.of(context).colorScheme.primaryContainer,
          ),
        ),
        // SuperTextField(
        //   textController: _textController,
        // ),
      ],
    );
  }
}

class CollectionInput extends MultiChildRenderObjectWidget {
  final double spacing;
  final double runSpacing;

  const CollectionInput({
    super.key,
    required this.spacing,
    required this.runSpacing,
    super.children,
  });

  @override
  RenderCollectionInput createRenderObject(BuildContext context) {
    return RenderCollectionInput(
      spacing: spacing,
      runSpacing: runSpacing,
    );
  }

  @override
  void updateRenderObject(
    BuildContext context,
    covariant RenderCollectionInput renderObject,
  ) {
    renderObject
      ..spacing = spacing
      ..runSpacing = runSpacing;
    super.updateRenderObject(context, renderObject);
  }
}

class RenderCollectionInput extends RenderBox
    with
        ContainerRenderObjectMixin<RenderBox,
            ContainerBoxParentData<RenderBox>>,
        RenderBoxContainerDefaultsMixin<RenderBox,
            ContainerBoxParentData<RenderBox>> {
  double _spacing;
  double _runSpacing;

  RenderCollectionInput({
    required double spacing,
    required double runSpacing,
  })  : _runSpacing = runSpacing,
        _spacing = spacing;

  set spacing(double spacing) {
    if (spacing == _spacing) return;
    _spacing = spacing;
    markNeedsLayout();
  }

  set runSpacing(double runSapcing) {
    if (runSapcing == _runSpacing) return;
    _runSpacing = runSapcing;
    markNeedsLayout();
  }

  @override
  void performLayout() {
    double x = 0, y = 0;
    double maxWidth = constraints.maxWidth;
    double accumulatedHeight = 0;
    final children = getChildrenAsList();

    for (int i = 0; i < children.length; i++) {
      final child = children[i];
      child.layout(const BoxConstraints(), parentUsesSize: true);

      final parentData = child.parentData as RenderCollecitonInputParentData;
      parentData.offset = Offset(x, y);

      x += child.size.width;

      accumulatedHeight = max(child.size.height, accumulatedHeight);
    }

    size = Size(maxWidth, accumulatedHeight);
  }

  @override
  void setupParentData(covariant RenderObject child) {
    if (child.parentData is RenderCollecitonInputParentData) {
      return;
    }

    child.parentData = RenderCollecitonInputParentData();
  }

  @override
  bool hitTest(HitTestResult result, {required Offset position}) {
    return defaultHitTestChildren(
      BoxHitTestResult.wrap(result),
      position: position,
    );
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    defaultPaint(context, offset);
  }
}

class RenderCollecitonInputParentData
    extends ContainerBoxParentData<RenderBox> {}
