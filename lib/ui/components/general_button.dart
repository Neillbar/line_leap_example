import 'package:flutter/material.dart';
import 'package:line_leap_example/ui/global/global_variables.dart';

class GeneralButton extends StatelessWidget {
  String buttontitle;
  Size size;
  BorderRadius? borderRadius;
  TextStyle? buttontextStyle;

  GeneralButton({Key? key, required this.buttontitle, required this.size, this.borderRadius, this.buttontextStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: gblAccentAColor,
            shape:
                RoundedRectangleBorder(borderRadius: borderRadius ?? BorderRadius.circular(8))),
        onPressed: () {},
        child: FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(
            buttontitle,
            style: buttontextStyle ?? gblItemRegularTextStyle,
          ),
        ),
      ),
    );
  }
}
