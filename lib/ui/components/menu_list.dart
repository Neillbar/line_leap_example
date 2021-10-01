import 'package:flutter/material.dart';
import 'package:line_leap_example/ui/global/global_variables.dart';

class MenuList extends StatelessWidget {
  String groupTitle;
  List<String> menuItems;
  MenuList({Key? key, required this.groupTitle, required this.menuItems})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      width: 180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            groupTitle,
            style: gblTitleTextStyle,
          ),
          gblMediumVerticalSpace,
          Expanded(
            child: ListView.separated(
              physics: NeverScrollableScrollPhysics(), 
              padding: EdgeInsets.zero,
                itemBuilder: (context, index) => Text(menuItems[index], style: gblSmallTextStyle,),
                separatorBuilder: (context, index) => SizedBox(
                      height: 16,
                    ),
                itemCount: menuItems.length),
          )
        ],
      ),
    );
  }
}
