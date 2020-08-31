import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dicitionary_bangangte.dart';
import 'list_dictionary_bangangte.dart';
import 'package:our_languages/i18n/dictionary_bangangte.i18n.dart';

class DictionaryBangangteSearch
    extends SearchDelegate<ListDictionaryBangangte> {
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
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
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

  DictionaryBangangte searchBangangteLanguage = DictionaryBangangte();

  final dataKey = new GlobalKey();

  @override
  Widget buildSuggestions(BuildContext context) {
    final myBangangteDictionaryList = query.isEmpty
        ? loadDictionaryBangangte()
        : loadDictionaryBangangte()
            .where((p) => p.colonialLanguage
                .toLowerCase()
                .startsWith(query.toLowerCase()))
            .toList();

    return myBangangteDictionaryList.isEmpty
        ? Center(
            child: Text('No results found',
                textAlign: TextAlign.center, style: TextStyle(fontSize: 20)))
        : ListView.builder(
            itemCount: myBangangteDictionaryList.length,
            itemBuilder: (context, index) {
              final ListDictionaryBangangte listBangangteDictionaryItem =
                  myBangangteDictionaryList[index];
              return ListTile(
                // ignore: missing_return
                onTap: () {
                  //showResults(context);
                  switch (listBangangteDictionaryItem.colonialLanguage) {
                    //One can create a single widget/class later
                    //so that when one searches for that particular word
                    // it opens that only word and one can play the audio
                    //but for the time being one moves back to the list of words
                    //since it is about to prove that the word exists and the user
                    //can scroll and look for the word her-/himself
                    case 'Oui':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DictionaryBangangte()),
                      );

                      break;
                    case 'Yes':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DictionaryBangangte()),
                      );

                      break;
                    case 'The eyes':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DictionaryBangangte()),
                      );

                      break;
                    case 'Les yeux':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DictionaryBangangte()),
                      );

                    //default:
                  }
                },
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      listBangangteDictionaryItem.originalLanguage,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      listBangangteDictionaryItem.colonialLanguage,
                      style: TextStyle(color: Colors.grey),
                    ),
                    Divider()
                  ],
                ),
              );
            });
  }
}
