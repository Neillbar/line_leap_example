import 'package:flutter/material.dart';
import 'package:line_leap_example/ui/components/general_button.dart';
import 'package:line_leap_example/ui/global/global_variables.dart';

import 'logo.dart';

class FootLogoGroup extends StatelessWidget {
  const FootLogoGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Logo(
          logoSize: Size(150, 40),
        ),
        gblMediumVerticalSpace,
        Container(
          width: 150,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FootorSocialLogo(
                socialImageName: 'assets/social/instagram@4x.png',
              ),
              FootorSocialLogo(
                socialImageName: 'assets/social/facebook@4x.png',
              ),
              FootorSocialLogo(
                socialImageName: 'assets/social/twitter@4x.png',
              ),
              FootorSocialLogo(
                socialImageName: 'assets/social/tiktok@4x.png',
              ),
            ],
          ),
        ),
        gblMediumVerticalSpace,
        GeneralButton(
          buttontitle: "Download the App",
          size: Size(150, 40),
          buttontextStyle: gblSmallItemTextStyle,
        )
      ],
    );
  }
}

class FootorSocialLogo extends StatelessWidget {
  String socialImageName;
  FootorSocialLogo({Key? key, required this.socialImageName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      child: Image.asset(
        socialImageName,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
