import 'package:flutter/material.dart';
import 'package:nobot/core/localization/localization_labels.dart';
import 'package:nobot/core/util/extensions/extensions.dart';

final navigatorKey = GlobalKey<NavigatorState>();
LocalizationLabels get labels =>
    navigatorKey.currentContext!.localizationLabels;
