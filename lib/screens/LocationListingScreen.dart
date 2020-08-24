import 'package:flutter/material.dart';
import 'package:layout/models/location.dart';
import '../main.dart';
import '../widgets/image_section.dart';
import '../widgets/tile_overlay.dart';

class location extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Locations'),
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) => _itemBuilder(context, index, locations[index]),
      ),
    );
  }

  _onLocationTap(BuildContext context, int locationID){
    Navigator.pushNamed(context, LocationDetailRoute, arguments: {'id': locationID});
  }
  Widget _itemBuilder(BuildContext context, int index, Location location){
    return GestureDetector(
      child: Container(
        height: 245,
       child: Stack(
        children: [
          ImageSection(name: location.imagePath, height: 245,),
          TileOverlay(location),
        ],
      ),
      ),
      onTap: () => _onLocationTap(context, location.id),
    );
  }

}