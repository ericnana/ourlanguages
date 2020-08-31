import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:our_languages/carousel/carousel_content_west.dart';
import 'package:our_languages/main.dart';
import 'package:our_languages/regions/regions_details_carousel.dart';
import 'package:our_languages/regions/west/bangangte/dicitionary_bangangte.dart';
import 'package:our_languages/regions/west/town_west_search.dart';
import 'package:our_languages/i18n/regions.i18n.dart';
import 'package:our_languages/welcome/welcome.dart';

import 'bangangte/bangangte_carousel.dart';

class DictionaryWest extends StatefulWidget {
  @override
  _DictionaryWest createState() => _DictionaryWest();
}

class _DictionaryWest extends State<DictionaryWest> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.lightGreen[500]),
        home: Scaffold(
          appBar: AppBar(
            title: Center(
                child:
                    Text('Dictionary West'.i18n, textAlign: TextAlign.center)),
            leading: GestureDetector(
              child: Icon(
                Icons.arrow_back_ios,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CarouselContentWest()),
                );
              },
            ),
          ),
          body: ListView(
            //padding: EdgeInsets.zero,
            children: [
              ListTile(
                title: Text("Bangangte", style: TextStyle(fontSize: 19.0)),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DictionaryBangangte()),
                  );
                },
              ),
              ListTile(
                title: Text("Bamena", style: TextStyle(fontSize: 19.0)),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                title: Text("Balengou", style: TextStyle(fontSize: 19.0)),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                title: Text("Bansoa", style: TextStyle(fontSize: 19.0)),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                title: Text("Dschang", style: TextStyle(fontSize: 19.0)),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                title: Text("Bafang", style: TextStyle(fontSize: 19.0)),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                title: Text("Bamboutos", style: TextStyle(fontSize: 19.0)),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                title: Text("Batie", style: TextStyle(fontSize: 19.0)),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                title: Text("Baham", style: TextStyle(fontSize: 19.0)),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                title: Text("Bakou", style: TextStyle(fontSize: 19.0)),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                title: Text("Bazou", style: TextStyle(fontSize: 19.0)),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                title: Text("Bandjoun", style: TextStyle(fontSize: 19.0)),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
          bottomNavigationBar: BottomAppBar(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.home,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegionsDetailsCarousel()),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      showSearch(context: context, delegate: TownWestSearch());
                    },
                  )
                ],
              ),
              color: Colors.lightGreen[500]),
        ));
  }
}

/* import 'package:our_languages/regions/west/bangangte/dicitionary_bangangte.dart';
import 'package:our_languages/regions/west/west.dart';

class DictionaryWest {
  String town;
  final dynamic dictionaryWest;

  DictionaryWest({this.town, this.dictionaryWest});
}

final dictionaryWestList = [
  DictionaryWest(town: "Bangangte", dictionaryWest: DictionaryBangangte()),
  DictionaryWest(town: "Bamena", dictionaryWest: West()),
]; */
