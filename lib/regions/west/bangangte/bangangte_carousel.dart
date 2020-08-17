import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:our_languages/content/towns_content.dart';
import 'package:our_languages/main.dart';
import 'package:our_languages/regions/regions_details.dart';
import 'package:our_languages/regions/west/bangangte/dicitionary_bangangte.dart';
import 'package:our_languages/regions/west/west.dart';

final imagesList = [
  "assets/count.jpeg",
  "assets/history.jpeg",
  "assets/alphabet.jpeg",
  "assets/diverse.png",
];

final colorList = [
  Colors.cyan.shade100,
  Colors.green.shade100,
  Colors.lime.shade100,
  Colors.orange.shade100,
];

class BangangteCarousel extends StatefulWidget {
  @override
  _BangangteCarousel createState() => _BangangteCarousel();
}

class _BangangteCarousel extends State<BangangteCarousel> {
  RegionsDetails regionlist;
  int currentPage = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: currentPage,
      keepPage: false,
      viewportFraction: 0.8,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
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
          ),
          body: Stack(
            children: <Widget>[
              AnimatedContainer(
                duration: Duration(milliseconds: 500),
                color: colorList[currentPage],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 450.0,
                    child: PageView.builder(
                      itemBuilder: (context, index) {
                        return itemBuilder(index);
                      },
                      controller: _pageController,
                      pageSnapping: true,
                      onPageChanged: _onPageChanged,
                      itemCount: 4,
                      physics: ClampingScrollPhysics(),
                    ),
                  ),
                  _detailsBuilder(currentPage),
                ],
              )
            ],
          ),
        ));
  }

  Widget _detailsBuilder(index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          value = (1 - (value.abs() * 0.5)).clamp(0.0, 1.0);
        }

        return Expanded(
          child: Transform.translate(
            offset: Offset(0, 100 + (-value * 100)),
            child: Opacity(
              opacity: value,
              child: Container(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      townsContentList[index].title,
                      style: TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.w600),
                    ),
                    GestureDetector(
                      child: Icon(
                        Icons.adjust,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DictionaryBangangte()),
                        );
                      },
                    ),
                    SizedBox(height: 20.0),
                    /* Text(
                      regionsDetailsList[index].description,
                      style: TextStyle(fontSize: 18.0),
                    ), */
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      width: 80.0,
                      height: 5.0,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    /* Text(
                      "Read More",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w900),
                    ), */
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget itemBuilder(index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          value = (1 - (value.abs() * 0.5)).clamp(0.0, 1.0);
          return Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 10.0),
                height: Curves.easeIn.transform(value) * 600,
                child: child,
              ));
        } else {
          return Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 10.0),
                height:
                    Curves.easeIn.transform(index == 0 ? value : value * 0.5) *
                        600,
                child: child,
              ));
        }
      },
      child: Material(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15.0),
              bottomRight: Radius.circular(15.0),
            ),
            child: Image.asset(
              imagesList[index],
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ),
    );
  }

  _onPageChanged(int index) {
    setState(() {
      print(index);
      currentPage = index;
    });
  }
}
