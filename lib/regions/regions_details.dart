import 'package:our_languages/regions/west/west.dart';

class RegionsDetails {
  String title;
  String description;
  final regionsList;

  RegionsDetails({this.title, this.description, this.regionsList});
}

final regionsDetailsList = [
  RegionsDetails(
      title: "WEST", description: "Capital: Bafoussam", regionsList: West()),
  RegionsDetails(title: "LITTORAL", description: "Capital: Douala"),
  RegionsDetails(title: "CENTRE", description: "Capital: Yaounde"),
];
