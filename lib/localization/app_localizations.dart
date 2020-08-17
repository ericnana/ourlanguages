import 'dart:convert';
import 'dart:async' show Future;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  Map<String, String> _localizedStrings;

  /* _jsonMap.forEach((String key, dynamic value) {
      _localizedStrings[key] = value.toString();
    }); */

  Future<bool> loadLanguageCode() async {
    String jsonString = await rootBundle
        .loadString('resources/langs/${this.locale.languageCode}.json');

    Map<String, dynamic> _jsonMap = json.decode(jsonString);

    this._localizedStrings = new Map();

    _jsonMap.forEach((String key, dynamic value) {
      this._localizedStrings[key] = value.toString();
    });

    /*  _localizedStrings = _jsonMap.map((String key, dynamic value) {
      return MapEntry(key, value.toString());
    }); */

    /* _jsonMap.forEach((String key, dynamic value) {
      _localizedStrings[key] = value.toString();
    }); */

    return true;
  }

  String translate(String key) {
    key = locale.languageCode.toString();
    print('language' + key);
    if (key != null) {
      print("*key is not null!!!" + key.toString());
    } else {
      print("*key is null!!!" + key.toString());
    }

    assert(key != null);
    if (key == null) throw NoSuchMethodError;
    return _localizedStrings[key];
  }
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'fr'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    AppLocalizations localizations = new AppLocalizations(locale);
    await localizations.loadLanguageCode();

    print("Load ${locale.languageCode}");

    return localizations;
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}
