import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  static var _t = Translations.byLocale("en") +
      {
        "en": {
          "Alphabet": "Alphabet",
          "Numbers": "Numbers",
          "Dictionary": "Dictionary",
          "History": "History",
        },
      } +
      {
        "fr": {
          "Alphabet": "Alphabet",
          "Numbers": "Nombres",
          "Dictionary": "Dictionnaire",
          "History": "Histoire",
        }
      };
  String get i18n => localize(this, _t);
}
