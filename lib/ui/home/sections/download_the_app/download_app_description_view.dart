import 'package:flutter/material.dart';
import 'package:line_leap_example/ui/components/download_store_button.dart';
import 'package:line_leap_example/ui/components/feature_component.dart';
import 'package:line_leap_example/ui/global/global_variables.dart';

class DownloadTheAppDescriptionArea extends StatelessWidget {
  const DownloadTheAppDescriptionArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: screenWidth(context) * 0.98,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Own Your Night",
                style: gblTitleDarkerTextStyle,
              ),
              gblSmallVerticalSpace,
              Text(
                "Download the App",
                style: gblMassiveTextStyle,
              ),
              gblBigVerticalSpace,
              Text(
                "Skip the line, order drinks, purchcase event tickets, and much more all your favorite bars!",
                style: gblRegularLightTextStyle,
              ),
            ],
          ),
        ),
        gblMassiveVerticalSpace,
        Container(
          alignment: Alignment.centerLeft,
          height: 320,
          width: 620,
          child: Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.start,
            children: [
              FeatureComponent(
                assetFeatureIcon: 'assets/feature_icons/LineSkip@4x.png',
                featureTitle: 'LineSkip',
                featureDescription:
                    'LineSkip passes let you skip long lines at your favorite bars, venues, and events. ',
              ),
              FeatureComponent(
                assetFeatureIcon: 'assets/feature_icons/Cover@4x.png',
                featureTitle: 'Cover',
                featureDescription:
                    'Ditch the ATM! Pay with Venmo, PayPal, or credit card using the LineLeap App.',
              ),
              FeatureComponent(
                assetFeatureIcon: 'assets/feature_icons/Drinks@4x.png',
                featureTitle: 'Drinks',
                featureDescription:
                    'Order your drinks right from your phone. No more splitting tabs or soggy receipts! ',
              ),
              FeatureComponent(
                assetFeatureIcon: 'assets/feature_icons/Events@4x.png',
                featureTitle: 'Event Tickets',
                featureDescription:
                    'Get tickerts and VIP access to dope concerts you won’t find anywhere else. ',
              ),
              FeatureComponent(
                assetFeatureIcon: 'assets/feature_icons/Frame35@4x.png',
                featureTitle: 'Exclusive Deals',
                featureDescription:
                    'Use LineLeap for exclusive deals on your favorite drinks!',
              ),
              FeatureComponent(
                assetFeatureIcon: 'assets/feature_icons/Reservations@4x.png',
                featureTitle: 'Reservations',
                featureDescription:
                    'Save your spot in line or grab the perfect table in seconds.',
              ),
            ],
          ),
        ),
        gblMassiveVerticalSpace,
         gblMassiveVerticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DownloadStoreButton(
              appleDownload: false,
            ),
            gblMediumHorizontalSpace,
            DownloadStoreButton(
              appleDownload: true,
            )
          ],
        ),
        gblMassiveVerticalSpace,
      ],
    );
  }
}
