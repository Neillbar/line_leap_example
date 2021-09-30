import 'package:flutter/material.dart';
import 'package:line_leap_example/ui/components/menu.dart';
import 'package:line_leap_example/ui/global/global_variables.dart';
import 'package:line_leap_example/ui/home/home_view.dart';

import 'extensions/hex_color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: (context, child) => Scaffold(
        backgroundColor: HexColor("#06162d"),
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          child: Menu(),
          preferredSize: Size(screenWidth(context), 100),
        ),
        body: child,
      ),
      home: HomeView(),
    );
  }
}
