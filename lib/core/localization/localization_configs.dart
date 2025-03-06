import 'package:firebase_ui_localizations/firebase_ui_localizations.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:syncfusion_localizations/syncfusion_localizations.dart';

class LocalizationConfigs {
  static final localizationsDelegates = [
    // Delegates below take care of built-in flutter widgets
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,

    // This delegate is required to provide the labels that are not overridden by LabelOverrides
    FirebaseUILocalizations.delegate,

    SfGlobalLocalizations.delegate,
  ];

  static final supportedLocales = [
    const Locale('en'),
    const Locale('es'),
  ];
}
