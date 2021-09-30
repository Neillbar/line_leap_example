import 'package:flutter/material.dart';
import 'package:line_leap_example/ui/global/global_variables.dart';

class PhoneBlob extends StatelessWidget {
  const PhoneBlob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
             alignment: Alignment.center,
            height: 840,
            child: Image.asset('assets/Blob@4x.png', fit: BoxFit.cover,),
            transform: Matrix4.translationValues(
              -100, 0.0, 0.0),
          ),
          Container(
            alignment: Alignment.topCenter,
             height: 960,
            child: Image.asset('assets/Phone@4x.png',fit: BoxFit.cover),
            transform: Matrix4.translationValues(
              -40, -60.0, 0.0),
          )
        ],
      ),
    );
  }
}
