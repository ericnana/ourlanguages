import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:our_languages/regions/regions.dart';
import 'package:our_languages/regions/regions_carousel.dart';
import 'package:our_languages/regions/regions_details_carousel.dart';
import 'package:our_languages/regions/west/town_west_search.dart';

// ignore: must_be_immutable
class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.lightGreen[500]),
        home: Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text('Our Languages', textAlign: TextAlign.center)),
            leading: GestureDetector(
              child: Icon(
                Icons.crop,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RegionsDetailsCarousel()),
                );
              },
            ),
          ),
          body: Container(
              child: Center(
                  child: Text(
                      'WELCOME!\n\n This application is about the languages spoken in Cameroon. To browse further please click on the icon top left to continue.',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center))),
          bottomNavigationBar: BottomAppBar(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Copyrightⓒ2020", textAlign: TextAlign.center),
                ],
              ),
              color: Colors.grey[100]),
        ));
  }
}
