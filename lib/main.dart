import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:our_languages/regions/regions.dart';
import 'package:our_languages/regions/regions_carousel.dart';
import 'package:our_languages/regions/regions_details_carousel.dart';
import 'package:our_languages/regions/west/town_west_search.dart';
import 'package:our_languages/splashscreen/splashscreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext contextP) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}

// ignore: must_be_immutable
/* class Welcome extends StatefulWidget {
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
        theme: ThemeData(primaryColor: Colors.green[900]),
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
                      'WELCOME to this application! It is about the languages spoken in Cameroon. You need to click on the icon top left to continue and discover more features',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w900),
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
 */
