import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  double leftMargin;
  Size? logoSize;
  Logo({Key? key, this.leftMargin = 0, this.logoSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: logoSize?.height ??  30,
      width: logoSize?.width ?? 120,
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: leftMargin),
      child: Image.asset(
        'assets/logo@4x.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
