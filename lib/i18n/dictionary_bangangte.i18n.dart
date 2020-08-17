import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  static var _t = Translations.byLocale("en") +
      {
        "en": {
          "Bangangte Dictionary": "Bangangte Dictionary",
          "Search": "Search",
          "Yes": "Yes",
          "Mother": "Mother",
          "My mother": "My mother",
          "No": "No",
          "Why": "Why",
          "The eyes": "The eyes",
        },
      } +
      {
        "fr": {
          "Bangangte Dictionary": "Dictionnaire Bangangté",
          "Search": "Rechercher",
          "Yes": "Oui",
          "Mother": "Maman",
          "My mother": "Ma mère",
          "No": "Non",
          "Why": "Pourquoi",
          "The eyes": "Les yeux",
        }
      };
  String get i18n => localize(this, _t);
}
