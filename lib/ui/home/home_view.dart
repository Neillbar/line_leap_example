import 'package:flutter/material.dart';
import 'package:line_leap_example/extensions/hex_color.dart';
import 'package:line_leap_example/ui/global/global_variables.dart';
import 'package:line_leap_example/ui/home/sections/download_the_app/download_the_app_view.dart';
import 'package:line_leap_example/ui/home/sections/footer/footer_view.dart';
import 'package:line_leap_example/ui/home/sections/search_section/search_component.dart';
import 'package:line_leap_example/ui/home/sections/tickets_sections/tickets_section_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#06162d"),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: screenHeight(context) * 0.6,
              width: screenWidth(context),
              child: Container(
                  alignment: Alignment.bottomCenter,
                  height: 500,
                  width: screenWidth(context),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/Hero-Image@4x.png',
                          ),
                          fit: BoxFit.cover)),
                  child: SearchComponent()),
            ),
            gblSectionDeviderVerticalSpace,
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TicketsSectionView(),
                  gblSectionDeviderVerticalSpace,
                  gblSectionDeviderVerticalSpace,
                  DownloadtheApp(),
                  gblSectionDeviderVerticalSpace,
                  Container(
                      width: screenWidth(context),
                      height: 380,
                      child: FooterView())
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
