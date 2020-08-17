class ListWest{
  final String townWest;
  final String category;
  ListWest({
    this.townWest,
    this.category,
    });
}

List<ListWest> loadTownWest(){
  var lw = <ListWest>[
    ListWest(
      townWest: 'Bangangte',
      category: 'West',
    ),

    ListWest(
      townWest: 'Bamena',
      category: 'West',
    ),

    ListWest(
      townWest: 'Dschang',
      category: 'West',
    ),

    ListWest(
      townWest: 'Bafang',
      category: 'West',
    ),

  ];
  return lw;

}