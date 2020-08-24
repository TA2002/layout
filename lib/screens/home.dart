import 'package:flutter/material.dart';
import 'package:layout/widgets/location_tile.dart';
import 'package:layout/widgets/text_section.dart';
import '../widgets/image_section.dart';
import '../models/location.dart';

class MaterialHome extends StatelessWidget {
  final int _locationID;

  MaterialHome(this._locationID);

  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchByID(_locationID);


    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(locations.name),
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ImageSection(name: locations.imagePath),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 20, 5, 0),
                child: LocationTile(location: locations, darkTheme: false,),
              ),

            ]..addAll(textSections(locations)) ),
      ),

    );
  }

  List<Widget> textSections(Location location) {
    return location.facts.map((fact) => TextSection(fact.name, fact.description)).toList();
  }

}