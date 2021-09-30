import 'package:flutter/material.dart';
import 'package:line_leap_example/ui/components/general_button.dart';
import 'package:line_leap_example/ui/components/logo.dart';
import 'package:line_leap_example/ui/components/menu_item_with_icon.dart';
import 'package:line_leap_example/ui/components/search_icon.dart';
import 'package:line_leap_example/ui/global/global_variables.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context),
      height: 90,
      color: overlayColor,
      child: Row(
        children: [
          Spacer(
            flex: 2,
          ),
          Logo(
            leftMargin: 20,
          ),
          Spacer(
            flex: 2,
          ),
          if (isBigScreen(context))
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Brand Ambassadors",
                    style: gblItemTextStyle,
                  ),
                ),
                gblMediumHorizontalSpace,
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Venue Owners",
                    style: gblItemTextStyle,
                  ),
                ),
                gblMediumHorizontalSpace,
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Buy Passes",
                    style: gblItemTextStyle,
                  ),
                ),
                gblMediumHorizontalSpace,
              ],
            ),
          if (isBigScreen(context))  SearchIcon(),
          if (isBigScreen(context))  gblMediumHorizontalSpace,
          if (isBigScreen(context))  GeneralButton(
            buttontitle: "Download the App",
            size: Size(175, 40),
          ),
          if (isBigScreen(context))  gblMediumHorizontalSpace,
          if (isBigScreen(context))  MenuItemWithIcon(
            assetImage: 'assets/My Account@4x.png',
            tite: "My Account",
          ),
          if (!isBigScreen(context))  Icon(Icons.menu, color: Colors.white,), 
          Spacer(),
        ],
      ),
    );
  }
}
