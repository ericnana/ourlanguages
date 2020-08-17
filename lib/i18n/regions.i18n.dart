import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  static var _t = Translations.byLocale("en") +
      {
        "en": {
          "Our Regions": "Our Regions",
          "Our Languages": "Our Languages",
          "South": "South",
          "Adamawa": "Adamawa",
          "Extreme-North": "Extreme-North",
          "North-West": "North-West",
          "South-West": "South-West",
          "West": "West",
          "Littoral": "Littoral",
          "North": "North",
          "East": "East",
          "Center": "Center",
          "Copyright": "Copyright",
        },
      } +
      {
        "fr": {
          "Our Regions": "Nos Régions",
          "Our Languages": "Nos Langues",
          "South": "Sud",
          "Adamawa": "Adamaoua",
          "Extreme-North": "Extrême- Nord",
          "North-West": "Nord-Ouest",
          "South-West": "Sud-Ouest",
          "West": "Ouest",
          "Littoral": "Littoral",
          "North": "Nord",
          "East": "Est",
          "Center": "Centre",
          "Copyright": "Copyright",
        }
      };
  String get i18n => localize(this, _t);
}
