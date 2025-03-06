import 'package:firebase_ui_localizations/firebase_ui_localizations.dart'
    as fbui;
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

import 'lang/en.dart';
import 'lang/es.dart';
import 'localization_labels.dart';

const localizations = <String, LocalizationLabels>{
  'en': EnLocalizations(),
  'es': EsLocalizations(),
};

const kDefaultLocale = Locale('en');

class AppLocalizations
    extends fbui.FirebaseUILocalizations<LocalizationLabels> {
  AppLocalizations(super.locale, super.labels);

  static AppLocalizations of(BuildContext context) {
    final l = Localizations.of<AppLocalizations>(
      context,
      AppLocalizations,
    );

    if (l != null) {
      return l;
    }

    final currentLocale = View.of(context).platformDispatcher.locale;
    final locale = localizations.keys.contains(currentLocale.languageCode)
        ? currentLocale
        : kDefaultLocale;

    final defaultLocalizations = localizations[locale.languageCode]!;
    return AppLocalizations(locale, defaultLocalizations);
  }

  static LocalizationLabels labelsOf(BuildContext context) {
    return AppLocalizations.of(context).labels;
  }
}

class AppLocalizationsDelegate
    extends LocalizationsDelegate<fbui.FirebaseUILocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      localizations.keys.contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) {
    // Returning a SynchronousFuture here because an async "load" operation
    // isn't needed to produce an instance of DemoLocalizations.
    return SynchronousFuture<AppLocalizations>(
      AppLocalizations(locale, localizations[locale.languageCode]!),
    );
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}
