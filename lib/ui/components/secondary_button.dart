import 'package:flutter/material.dart';
import 'package:line_leap_example/ui/global/global_variables.dart';

class SecondaryButton extends StatelessWidget {
  String buttontitle;
  Size size;
  BorderRadius? borderRadius;
  SecondaryButton({Key? key, required this.buttontitle, required this.size, this.borderRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: gblAccentBColor,
            shape:
                RoundedRectangleBorder(borderRadius: borderRadius ?? BorderRadius.circular(8))),
        onPressed: () {},
        child: Text(
          buttontitle,
          style: gblItemRegularTextStyle,
        ),
      ),
    );
  }
}
