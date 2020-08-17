import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:our_languages/main.dart';
import 'package:our_languages/regions/west/bangangte/bangangte_carousel.dart';
import 'bangangte.dart';
import 'dictionary_bangangte_search.dart';
import 'package:our_languages/i18n/dictionary_bangangte.i18n.dart';

class DictionaryBangangte extends StatelessWidget {
  Future<AudioPlayer> playLocalAssetOui() async {
    AudioCache cache = new AudioCache();
    //At the next line, DO NOT pass the entire reference such as assets/yes.mp3. This will not work.
    //Just pass the file name only.
    return await cache.play("Oui.m4a");
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
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
            title: Center(
                child: Text('Bangangte Dictionary'.i18n,
                    textAlign: TextAlign.center)),
            leading: GestureDetector(
              child: Icon(
                Icons.arrow_back_ios,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BangangteCarousel()),
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
              ListTile(
                title: Text("ŋ̂" + ":" + "Yes".i18n,
                    style: TextStyle(fontSize: 19.0)),
                trailing: Icon(Icons.mic),
                onTap: () {
                  playLocalAssetOui();
                },
              ),
              ListTile(
                title: Text("Mα" + ":" + "Mother".i18n,
                    style: TextStyle(fontSize: 19.0)),
                trailing: Icon(Icons.mic),
              ),
              ListTile(
                title: Text("Mα̂α" + ":" + "My mother".i18n,
                    style: TextStyle(fontSize: 19.0)),
                trailing: Icon(Icons.mic),
              ),
              ListTile(
                title: Text("Nga" + ":" + "No".i18n,
                    style: TextStyle(fontSize: 19.0)),
                trailing: Icon(Icons.mic),
              ),
              ListTile(
                title: Text("Nǔmkə" + ":" + "Why".i18n,
                    style: TextStyle(fontSize: 19.0)),
                trailing: Icon(Icons.mic),
              ),
              ListTile(
                title: Text("Nǔmmbə" + ":" + "Because".i18n,
                    style: TextStyle(fontSize: 19.0)),
                trailing: Icon(Icons.mic),
              ),
              ListTile(
                title: Text("Bʉn" + ":" + "The breast".i18n,
                    style: TextStyle(fontSize: 19.0)),
                trailing: Icon(Icons.mic),
              ),
              ListTile(
                title: Text("Mbʉn" + ":" + "The breasts".i18n,
                    style: TextStyle(fontSize: 19.0)),
                trailing: Icon(Icons.mic),
              ),
              ListTile(
                title: Text("Mbʉn" + ":" + "The milk".i18n,
                    style: TextStyle(fontSize: 19.0)),
                trailing: Icon(Icons.mic),
              ),
              ListTile(
                title: Text("Tu" + ":" + "The head".i18n,
                    style: TextStyle(fontSize: 19.0)),
                trailing: Icon(Icons.mic),
              ),
              ListTile(
                title: Text("Ntōŋ" + ":" + "The ears".i18n,
                    style: TextStyle(fontSize: 19.0)),
                trailing: Icon(Icons.mic),
              ),
              ListTile(
                title: Text("Miαg" + ":" + "The eyes".i18n,
                    style: TextStyle(fontSize: 19.0)),
                trailing: Icon(Icons.mic),
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
                      showSearch(
                          context: context,
                          delegate: DictionaryBangangteSearch());
                    },
                  )
                ],
              ),
              color: Colors.green[900]),
        ));
  }
}
