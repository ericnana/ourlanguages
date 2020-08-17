import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:our_languages/main.dart';
import 'package:our_languages/regions/regions_details_carousel.dart';
import 'package:our_languages/regions/west/town_west_search.dart';
import 'package:our_languages/i18n/regions.i18n.dart';

import 'bangangte/bangangte_carousel.dart';

class West extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.green[900]),
        home: Scaffold(
          appBar: AppBar(
            title:
                Center(child: Text('West'.i18n, textAlign: TextAlign.center)),
            leading: GestureDetector(
              child: Icon(
                Icons.arrow_back_ios,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RegionsDetailsCarousel()),
                );
              },
            ),

            /*actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OurLanguages()),
                  );
                },
              )
            ],*/
          ),
          body: ListView(
            //padding: EdgeInsets.zero,
            children: [
              /*Stack(
                children: <Widget>[
                  Container(
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(75.0))))
                ],
              ),*/
              ListTile(
                title: Text("Bangangte", style: TextStyle(fontSize: 19.0)),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BangangteCarousel()),
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
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Welcome()),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      /* Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OurLanguages()),
                        );*/
                      showSearch(context: context, delegate: TownWestSearch());
                    },
                  )
                ],
              ),
              color: Colors.green[900]),
        ));
  }
}
