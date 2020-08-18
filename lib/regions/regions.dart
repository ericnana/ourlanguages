import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:i18n_extension/i18n_widget.dart';
import 'package:our_languages/regions/west/west.dart';
import 'package:our_languages/i18n/regions.i18n.dart';

//void main() => runApp(OurLanguages());
/* void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: OurLanguages(),
  ));
} */

class Regions extends StatefulWidget {
  @override
  _OurRegions createState() => _OurRegions();
}

class _OurRegions extends State<Regions> {
  final GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();

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
        home: I18n(
            child: Scaffold(
          key: scaffoldkey,
          drawer: new Drawer(
            //Page Drawer for Regions
            child: ListView(
              //padding: EdgeInsets.zero,
              children: [
                AppBar(
                  title: Center(
                      child: Text('Our Regions'.i18n,
                          //AppLocalizations.of(context).translate('our_regions'),
                          textAlign: TextAlign.center)),
                  leading: Icon(Icons.crop),
                ),
                ListTile(
                  title: Text("South".i18n, style: TextStyle(fontSize: 18.0)),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  title: Text("Adamawa".i18n, style: TextStyle(fontSize: 18.0)),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  title: Text("Extreme-North".i18n,
                      style: TextStyle(fontSize: 18.0)),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  title:
                      Text("North-West".i18n, style: TextStyle(fontSize: 18.0)),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  title:
                      Text("South-West".i18n, style: TextStyle(fontSize: 18.0)),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  title: Text("West".i18n, style: TextStyle(fontSize: 18.0)),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => West()),
                    );
                  },
                ),
                ListTile(
                  title:
                      Text("Littoral".i18n, style: TextStyle(fontSize: 18.0)),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  title: Text("North".i18n, style: TextStyle(fontSize: 18.0)),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  title: Text("East".i18n, style: TextStyle(fontSize: 18.0)),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  title: Text("Center".i18n, style: TextStyle(fontSize: 18.0)),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  title: Text(
                    "Copyrightⓒ2020",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14.0),
                  ),
                ),
              ],
            ),
          ),

          appBar: AppBar(
              title: Center(
                  child:
                      Text('Our Languages'.i18n, textAlign: TextAlign.center)),
              leading: GestureDetector(
                  onTap: () => scaffoldkey.currentState.openDrawer(),
                  child: Icon(
                    Icons.menu,
                  ))),

          //Adding background image
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/languages.png'),
                fit: BoxFit.scaleDown,
              ),
            ),
            //child: null /* add child content here */,
          ),
        )));
  }
}
