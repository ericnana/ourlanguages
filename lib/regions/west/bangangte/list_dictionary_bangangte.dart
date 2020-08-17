import 'package:our_languages/i18n/dictionary_bangangte.i18n.dart';

class ListDictionaryBangangte {
  final String colonialLanguage;
  final String originalLanguage;
  ListDictionaryBangangte({
    this.colonialLanguage,
    this.originalLanguage,
  });
}

List<ListDictionaryBangangte> loadDictionaryBangangte() {
  var ldb = <ListDictionaryBangangte>[
    ListDictionaryBangangte(
      originalLanguage: 'ŋ̂',
      colonialLanguage: 'Yes'.i18n,
    ),
    ListDictionaryBangangte(
      originalLanguage: 'Mα',
      colonialLanguage: 'Mother'.i18n,
    ),
    ListDictionaryBangangte(
      originalLanguage: 'Mα̂α',
      colonialLanguage: 'My mother'.i18n,
    ),
    ListDictionaryBangangte(
      originalLanguage: 'Nga',
      colonialLanguage: 'No'.i18n,
    ),
    ListDictionaryBangangte(
      originalLanguage: 'Miαg',
      colonialLanguage: 'The eyes'.i18n,
    ),
  ];
  return ldb;
}
