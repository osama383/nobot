import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CommonLoading extends StatelessWidget {
  const CommonLoading({
    super.key,
    this.tilesCount = 1,
  });
  final int tilesCount;

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: Column(
        children: [
          ...List<Widget>.generate(
            tilesCount,
            (index) => const ListTile(
              title: Bone.text(),
              subtitle: Bone.text(words: 1),
            ),
          ),
        ],
      ),
    );
  }
}
