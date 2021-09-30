import 'package:flutter/material.dart';
import 'package:line_leap_example/extensions/hex_color.dart';
import 'package:line_leap_example/ui/components/general_button.dart';
import 'package:line_leap_example/ui/components/map_pin.dart';
import 'package:line_leap_example/ui/components/search_icon.dart';
import 'package:line_leap_example/ui/global/global_variables.dart';

class SearchComponent extends StatelessWidget {
  const SearchComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      height: 80,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
            HexColor("#06162d").withOpacity(0.8),
            HexColor("#06162d").withOpacity(0.8),
            Colors.transparent
          ])),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: screenWidth(context) * 0.7,
            child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(bottom: 10),
                child: SearchField()),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: GeneralButton(
              buttontitle: "Search",
              size: Size(150, 70),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(10)),
            ),
          ),
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(height: 2),
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
          fillColor: Colors.white,
          prefixIcon: Padding(
            padding:
                const EdgeInsets.only(top: 14, left: 8, right: 8, bottom: 8),
            child: SearchIcon(
              darkIcon: true,
            ),
          ),
          suffixIcon: isBigScreen(context)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 40,
                      width: 1,
                      color: HexColor("#00172E"),
                    ),
                    gblMediumHorizontalSpace,
                    MapPin(),
                    gblMediumHorizontalSpace,
                    Text(
                      "All Locations",
                      style: gblRegularBlackTextStyle,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: textColorB,
                      ),
                    ),
                    gblMediumHorizontalSpace,
                  ],
                )
              : Container(),
          hintText: "Search Events, Venues, Artists or Passes",
          hintStyle: gblRegularBlackTextStyle,
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8), topLeft: Radius.circular(8)),
              borderSide: BorderSide.none)),
    );
  }
}
