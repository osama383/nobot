import 'package:flutter/widgets.dart';

const extraSmall = 320;
const small = 550;
const medium = 768;
const large = 960;
const largeWidth = 1024;
const extraLarge = 1280;

extension MediaQueryDataExtensions on MediaQueryData {
  bool get isExtraSmall => size.shortestSide <= extraSmall;
  bool get isSmall =>
      size.shortestSide > extraSmall && size.shortestSide <= small;
  bool get isMedium => size.shortestSide > small && size.shortestSide <= medium;
  bool get isLarge => size.shortestSide > medium && size.shortestSide <= large;
  bool get isExtraLarge => size.shortestSide > large;

  bool get isSmallOrLess => size.shortestSide <= small;
  bool get isMediumOrLess => size.shortestSide <= medium;
  bool get isLargeOrLess => size.shortestSide <= large;
  bool get widthIsExtraLargeOrLess => size.width <= extraLarge;
  bool get widthIsExtraLarge => size.width > largeWidth;
}
