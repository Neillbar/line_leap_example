import 'package:flutter/material.dart';
import 'package:line_leap_example/ui/global/global_variables.dart';

class FeatureComponent extends StatelessWidget {
  String assetFeatureIcon;
  String featureTitle;
  String featureDescription;
  FeatureComponent(
      {Key? key,
      required this.assetFeatureIcon,
      required this.featureDescription,
      required this.featureTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FeatureIcon(
            featureIcon: assetFeatureIcon,
          ),
          gblMiniHorizontalSpace,
          Expanded(
            child: FeatureDetails(
              featureDescription: featureDescription,
              featureTitle: featureTitle,
            ),
          )
        ],
      ),
    );
  }
}

class FeatureIcon extends StatelessWidget {
  String featureIcon;
  FeatureIcon({Key? key, required this.featureIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 40,
        height: 40,
        child: Image.asset(
          featureIcon,
          fit: BoxFit.fill,
        ));
  }
}

class FeatureDetails extends StatelessWidget {
  String featureTitle;
  String featureDescription;
  FeatureDetails(
      {Key? key, required this.featureDescription, required this.featureTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          gblSmallVerticalSpace,
          Text(
            featureTitle,
            style: gblTitleTextStyle,
          ),
          gblSmallVerticalSpace,
          Text(
            featureDescription,
            style: gblSmallTextStyle,
          ),
        ],
      ),
    );
  }
}
