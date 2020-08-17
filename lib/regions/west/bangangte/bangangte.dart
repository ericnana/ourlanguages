//Class to implement the language Bangangte
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:our_languages/main.dart';
import 'package:our_languages/regions/regions.dart';
import 'package:our_languages/regions/west/west.dart';
import 'dicitionary_bangangte.dart';
import 'package:our_languages/i18n/content.i18n.dart';

class Bangangte extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.green[900]),
        supportedLocales: [Locale('en', 'US'), Locale('fr', 'FR')],
        localizationsDelegates: [
          //AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        localeResolutionCallback: (locale, supportedLocales) {
          for (var supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == locale.languageCode &&
                supportedLocale.countryCode == locale.countryCode) {
              return supportedLocale;
            }
          }
          return supportedLocales.first;
        },
        home: Scaffold(
          appBar: AppBar(
            title:
                Center(child: Text('Bangangte', textAlign: TextAlign.center)),
            leading: GestureDetector(
              child: Icon(
                Icons.arrow_back_ios,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => West()),
                );
              },
            ),
            /* actions: <Widget>[
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
              ListTile(
                title: Text("Alphabet".i18n, style: TextStyle(fontSize: 19.0)),
                leading: (Image.asset('assets/alphabet.jpeg')),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                title: Text("Numbers".i18n, style: TextStyle(fontSize: 19.0)),
                leading: (Image.asset('assets/count.jpeg')),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                title:
                    Text("Dictionary".i18n, style: TextStyle(fontSize: 19.0)),
                leading: (Image.asset('assets/diverse.png')),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DictionaryBangangte()),
                  );
                },
              ),

              //In this it is necessary to handle such case
              //reporting about the complete history of the region's language
              ListTile(
                title: Text("History".i18n, style: TextStyle(fontSize: 19.0)),
                leading: (Image.asset('assets/history.jpeg')),
                trailing: Icon(Icons.arrow_forward_ios),
              ),

              //Do it later for automatic translation using artificial intelligence
              /*ListTile(
                title: Text("Translation", style: TextStyle(fontSize: 19.0)),
                leading: (Image.asset('assets/history.jpeg')),
                trailing: Icon(Icons.arrow_forward_ios),
              )*/
            ],
          ),
          bottomNavigationBar: BottomAppBar(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                  /*IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OurLanguages()),
                      );
                    },
                  )*/
                ],
              ),
              color: Colors.green[900]),
        ));
  }
}
