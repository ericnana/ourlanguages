import 'package:flutter/material.dart';

class RegionsImageScreen extends StatefulWidget {
  final String url;
  RegionsImageScreen(this.url);

  @override
  _OurRegionsImageScreen createState() => _OurRegionsImageScreen(url);
}

class _OurRegionsImageScreen extends State<RegionsImageScreen> {
  final String url;
  _OurRegionsImageScreen(this.url);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ImageScreen'),
        ),
        body: Image.network(url, width: double.infinity));
  }
}
