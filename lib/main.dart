import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:our_languages/regions/regions.dart';
import 'package:our_languages/regions/regions_carousel.dart';
import 'package:our_languages/regions/regions_details_carousel.dart';
import 'package:our_languages/regions/west/town_west_search.dart';

/* 
void main() {
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en', 'US'), Locale('de', 'DE')],
      path: 'assets/resources/', // <-- change patch to your
      fallbackLocale: Locale('en', 'US'),
      child: Welcome()
    ),
  );
} */

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Welcome(),
  ));
}

// ignore: must_be_immutable
class Welcome extends StatefulWidget {
  //This method is needed in case someone needs a dropdown item for the language

  /* static void setLocale(BuildContext context, Locale locale) {
    _WelcomeState state = context.findAncestorStateOfType<_WelcomeState>();
    state.setLocale(locale);
  } */

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  /* void changedLanguage(Languages languages) {
    print(languages.languageCode);
  }
 */
  /* Locale _locale;

  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  } */

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
                  /* IconButton(
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
                  ), */
                  /* IconButton(
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
                  ) */
                ],
              ),
              color: Colors.grey[100]),

          /* bottomNavigationBar: BottomAppBar(
            child: Align(
              alignment: Alignment.center,
              child: Text("Copyrightⓒ2020"),
            ),
          ), */

          //child: null /* add child content here */,

/*         supportedLocales: [const Locale('en', 'US'), const Locale('fr', 'FR')],
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          //GlobalCupertinoLocalizations.delegate
        ],
        localeResolutionCallback:
            (Locale locale, Iterable<Locale> supportedLocales) {
          if (locale == null) {
            debugPrint("*language locale is null!!!");
            return supportedLocales.first;
          }

          for (var supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == locale.languageCode &&
                supportedLocale.countryCode == locale.countryCode) {
              return supportedLocale;
            }
          }
          debugPrint("*language to fallback ${supportedLocales.first}");
          return supportedLocales.first;
        }, */

          //Localization from the AppBar
          /* locale: _locale,
      supportedLocales: [Locale('en', 'US'), Locale('fr', 'FR')],
      localizationsDelegates: [
        Localization.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      localeResolutionCallback: (deviceLocale, supportedLocales) {
        for (var locale in supportedLocales) {
          if (locale.languageCode == deviceLocale.languageCode &&
              locale.countryCode == deviceLocale.countryCode) {
            return deviceLocale;
          }
        }
        return supportedLocales.first;
      }, */
          // ignore: missing_required_param
/*         home: I18n(
          child: Scaffold(
            appBar: AppBar(
              title: Center(
                  child:
                      Text('Our Languages'.i18n, textAlign: TextAlign.center)),
              actions: <Widget>[
                /* IconButton(
              icon: Icon(
                Icons.language,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LanguageChoice()),
                );
              },
            ) */

                /* Padding(
              padding: EdgeInsets.all(8.0),
              child: DropdownButton(
                onChanged: (Languages languages) {
                  changedLanguage(languages);
                },
                underline: SizedBox(),
                icon: Icon(
                  Icons.language,
                  color: Colors.white,
                ),
                items: Languages.languageList()
                    .map<DropdownMenuItem<Languages>>((lang) =>
                        DropdownMenuItem(
                          value: lang,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  lang.name,
                                  style: TextStyle(fontSize: 5),
                                )
                              ]),
                        ))
                    .toList(),
              ),
            ) */
              ],
            ),
          ),
        ) */
        ));
  }
}
