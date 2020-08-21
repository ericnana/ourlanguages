import 'package:our_languages/regions/west/bangangte/dicitionary_bangangte.dart';
import 'package:our_languages/regions/west/west.dart';

class DictionaryWest {
  String town;
  final dynamic dictionaryWest;

  DictionaryWest({this.town, this.dictionaryWest});
}

final dictionaryWestList = [
  DictionaryWest(town: "Bangangte", dictionaryWest: DictionaryBangangte()),
  DictionaryWest(town: "Bamena", dictionaryWest: West()),
];
