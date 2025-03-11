import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DefaultIcons {
  static Widget get upArrow => SvgPicture.asset(
        'assets/images/table_builder/icons/up_arrow.svg',
        height: 14,
      );
  static Widget get downArrow => SvgPicture.asset(
        'assets/images/table_builder/icons/down_arrow.svg',
        height: 14,
      );

  static Widget get filterOn => SvgPicture.asset(
        'assets/images/table_builder/icons/filter_on.svg',
        height: 18,
      );

  static Widget get filter => SvgPicture.asset(
        'assets/images/table_builder/icons/filter.svg',
        height: 16,
      );
  static Widget get clearFilterEnabled => SvgPicture.asset(
        'assets/images/table_builder/icons/filter_clear_black.svg',
        height: 16,
      );
  static Widget get clearFilterDisabled => SvgPicture.asset(
        'assets/images/table_builder/icons/filter_clear_grey.svg',
        height: 16,
      );

  static get sortAscending => SvgPicture.asset(
        'assets/images/table_builder/icons/ascending.svg',
        height: 16,
      );
  static get sortDescending => SvgPicture.asset(
        'assets/images/table_builder/icons/descending.svg',
        height: 16,
      );
}
