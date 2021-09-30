import 'package:flutter/material.dart';

class SearchIcon extends StatelessWidget {
  bool darkIcon;
  SearchIcon({Key? key, this.darkIcon = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 40,
      height: 40,
      child: TextButton(
        onPressed: () {},
        child: Image.asset(
          darkIcon ? 'assets/search-dark@4x.png' : 'assets/search-light@4x.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
