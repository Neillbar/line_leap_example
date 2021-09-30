import 'package:flutter/material.dart';
import 'package:line_leap_example/ui/global/global_variables.dart';

class MenuItemWithIcon extends StatelessWidget {
  String assetImage;
  String tite;
  MenuItemWithIcon({Key? key, required this.assetImage, required this.tite})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 20,
          height: 20,
          child: Image.asset(assetImage, fit: BoxFit.cover,),
        ),
        gblSmallHorizontalSpace,
        TextButton(
          onPressed: (){},
          child: Text(
            tite,
            style: gblPrimaryTextStyle,
          ),
        )
      ],
    );
  }
}
