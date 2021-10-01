import 'package:flutter/material.dart';
import 'package:line_leap_example/extensions/hex_color.dart';
import 'package:google_fonts/google_fonts.dart';

Color overlayColor = Colors.black.withOpacity(0.6);
Color gblAccentAColor = HexColor("#0682FF");
Color gblAccentBColor = HexColor("#1e2d42");
Color textColorA = HexColor("#FFFFFF");
Color textColorB = HexColor("#00172E");

//APP TEXTSTYLES
TextStyle gblPrimaryTextStyle = TextStyle(
    color: textColorA,
    fontSize: 18,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.italic);

TextStyle gblItemTextStyle = GoogleFonts.lato(
    textStyle: TextStyle(
        color: textColorA,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal));

TextStyle gblSmallItemTextStyle = GoogleFonts.lato(
    textStyle: TextStyle(
        color: textColorA,
        fontSize: 14,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal));

TextStyle gblItemRegularTextStyle = GoogleFonts.lato(
    textStyle: TextStyle(
        color: textColorA,
        fontSize: 18,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal));

TextStyle gblBigTextStyle = GoogleFonts.lato(
    textStyle: TextStyle(
        color: textColorA,
        fontSize: 32,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal));

TextStyle gblMassiveTextStyle = GoogleFonts.lato(
    textStyle: TextStyle(
        color: textColorA,
        fontSize: 44,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal));

TextStyle gblTitleTextStyle = GoogleFonts.lato(
    textStyle: TextStyle(
        color: textColorA,
        fontSize: 24,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal));
      
TextStyle gblTitleDarkerTextStyle = GoogleFonts.lato(
    textStyle: TextStyle(
        color: textColorA.withOpacity(0.5),
        fontSize: 24,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal));

TextStyle gblRegularBlackTextStyle = GoogleFonts.lato(
    textStyle: TextStyle(
         color: textColorB,
        fontSize: 20,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal));

TextStyle gblRegularLightTextStyle = GoogleFonts.lato(
    textStyle: TextStyle(
        color: textColorA.withOpacity(0.5),
        fontSize: 20,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal));

TextStyle gblSmallTextStyle = GoogleFonts.lato(
    textStyle: TextStyle(
        color: textColorA.withOpacity(0.5),
        fontSize: 16,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal));

//Spacing
SizedBox gblSectionDeviderVerticalSpace = SizedBox(height: 100);
SizedBox gblMassiveVerticalSpace = SizedBox(height: 32);
SizedBox gblBigVerticalSpace = SizedBox(height: 24);
SizedBox gblMediumVerticalSpace = SizedBox(height: 16);
SizedBox gblSmallVerticalSpace = SizedBox(height: 8);

SizedBox gblBigHorizontalSpace = SizedBox(width: 30);
SizedBox gblMediumHorizontalSpace = SizedBox(width: 24);
SizedBox gblSmallHorizontalSpace = SizedBox(width: 8);
SizedBox gblMiniHorizontalSpace = SizedBox(width: 6);

double screenWidth(context) => MediaQuery.of(context).size.width;
double screenHeight(context) => MediaQuery.of(context).size.height;

bool isBigScreen(context) => MediaQuery.of(context).size.width > 1000;
