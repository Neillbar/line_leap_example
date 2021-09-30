import 'package:flutter/material.dart';

class MapPin extends StatelessWidget {
  const MapPin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 20,
      width: 20,
      child: Image.asset(
        'assets/map-pin@4x.png',
        fit: BoxFit.fill,
      ),
    );
  }
}
