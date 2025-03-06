import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nobot/core/util/extensions/media_query_data_extensions.dart';

import '../../localization/app_localizations.dart';
import '../../localization/localization_labels.dart';

enum WindowClass { compact, medium, expanded, large, extraLarge }

extension BuildContextExtensions on BuildContext {
  double get width => MediaQuery.of(this).size.width;

  WindowClass get windowClass {
    return width >= 1600
        ? WindowClass.extraLarge
        : width >= 1200
            ? WindowClass.large
            : width >= 840
                ? WindowClass.expanded
                : width >= 600
                    ? WindowClass.medium
                    : WindowClass.compact;
  }

  void pop() => Navigator.of(this).pop();
  LocalizationLabels get localizationLabels => AppLocalizations.labelsOf(this);

  Locale get locale => AppLocalizations.of(this).locale;

  MediaQueryData get mediaQueryData => MediaQuery.of(this);

  int get inputFieldsCrossAxisCount => useMobileLayout ? 1 : 2;

  TextStyle? get textTitleMedium => Theme.of(this).textTheme.titleMedium;

  TextStyle? get textTitleLarge => Theme.of(this).textTheme.titleLarge;

  double get maxHeight => mediaQueryData.size.height;

  bool get useMobileLayout =>
      !mediaQueryData.isExtraLarge && !mediaQueryData.widthIsExtraLarge;

  bool get isMobileDevice =>
      defaultTargetPlatform == TargetPlatform.iOS ||
      defaultTargetPlatform == TargetPlatform.android;

  bool get canBack => Navigator.of(this).canPop();

  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}
