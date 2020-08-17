/* //import 'dart:js';

import 'package:flutter/material.dart';
import 'package:our_languages/languages/languages.dart';
import 'package:our_languages/main.dart';
import 'package:our_languages/regions/regions.dart';

class LanguageChoice extends StatefulWidget {
  @override
  _LanguageChoiceState createState() => _LanguageChoiceState();
}

class _LanguageChoiceState extends State<LanguageChoice> {
  /*  void showSuccessDialog(){
    showTimePicker(context: context, initialTime: TimeOfDay.now());
  } */

  void changeLanguage(Languages languages) {
    Locale _temp;
    BuildContext context;

    switch (languages.languageCode) {
      case 'en':
        _temp = Locale(languages.languageCode, 'US');
        break;
      case 'fr':
        _temp = Locale(languages.languageCode, 'FR');
        break;
      default:
        _temp = Locale(languages.languageCode, 'US');
    }

    Welcome.setLocale(context, _temp);
  }

  @override
  Widget build(Object context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.green[900]),
        home: Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text('Our Languages', textAlign: TextAlign.center)),
            /* leading: GestureDetector(
              child: Icon(
                Icons.arrow_back_ios,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Regions()),
                );
              },
            ), */
          ),
          body: Center(
            /* child: new Column(
              children: <Widget>[
                new RaisedButton(
                  child: new Text("English"),
                  color: Colors.blueAccent[600],
                  onPressed: () {
                    Navigator.of(context).push(_createRoute());
                  },
                ),
                new RaisedButton(
                  child: new Text("Français"),
                  color: Colors.blueAccent[600],
                  onPressed: () {},
                ),
              ],
            ), */

            child: new ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                new RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(_createRoute());
                  },
                  child: new Text("English"),
                  color: Colors.green,
                ),
                new RaisedButton(
                  onPressed: () {},
                  child: new Text("French"),
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ));
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Regions(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
 */
