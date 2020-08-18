import 'package:flutter/material.dart';
import 'package:our_languages/regions/west/bangangte/bangangte.dart';
import 'list_west.dart';

class TownWestSearch extends SearchDelegate<ListWest> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back_ios),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(child: Text(query, style: TextStyle(fontSize: 10)));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final myWestList = query.isEmpty
        ? loadTownWest()
        : loadTownWest()
            .where(
                (p) => p.townWest.toLowerCase().startsWith(query.toLowerCase()))
            .toList();

    return myWestList.isEmpty
        ? Center(
            child: Text('No results found',
                textAlign: TextAlign.center, style: TextStyle(fontSize: 20)))
        : ListView.builder(
            itemCount: myWestList.length,
            itemBuilder: (context, index) {
              final ListWest listWestItem = myWestList[index];
              return ListTile(
                // ignore: missing_return
                onTap: () {
                  //showResults(context);
                  switch (listWestItem.townWest) {
                    case 'Bangangte':
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Bangangte()),
                      );
                      break;
                    case 'Bamena':
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Bangangte()),
                      );

                      break;
                    //default:
                  }
                },
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      listWestItem.townWest,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      listWestItem.category,
                      style: TextStyle(color: Colors.grey),
                    ),
                    Divider()
                  ],
                ),
              );
            });
  }
}
