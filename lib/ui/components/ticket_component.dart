import 'package:flutter/material.dart';
import 'package:line_leap_example/extensions/hex_color.dart';
import 'package:line_leap_example/ui/components/general_button.dart';
import 'package:line_leap_example/ui/global/global_variables.dart';

class TicketComponent extends StatelessWidget {
  String assetImage;
  String title;
  String shortTitle;
  String date;
  String address;
  String fromPrice;

  TicketComponent(
      {Key? key,
      required this.assetImage,
      required this.address,
      required this.title,
      required this.fromPrice,
      required this.date,
      required this.shortTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 352,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: gblAccentBColor,
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8), topLeft: Radius.circular(8)),
                child: Image.asset(
                  assetImage,
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(25, 0, 25, 0),
              width: 300,
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              gblBigVerticalSpace,
              Text(
                title,
                style: gblTitleTextStyle,
              ),
              gblSmallVerticalSpace,
              Text(
                shortTitle,
                style: gblSmallTextStyle,
              ),
              Text(
                date,
                style: gblSmallTextStyle,
              ),
              Text(
                address,
                style: gblSmallTextStyle,
              ),
              gblBigVerticalSpace,
              GeneralButton(buttontitle: fromPrice, size: Size(110, 40)),
              gblBigVerticalSpace,
            ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
