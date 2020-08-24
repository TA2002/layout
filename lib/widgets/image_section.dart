import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  final String name;
  final double height;

  ImageSection({@required this.name, this.height = 225});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
        height: height,
      ),
      decoration: BoxDecoration(
          color: Colors.grey,
      ),

      child: Image.asset(name, fit: BoxFit.cover),
    );
  }
}