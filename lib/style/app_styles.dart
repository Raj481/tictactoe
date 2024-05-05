

import 'package:abrtictactoe/utils/font_res.dart';
import 'package:flutter/material.dart';
import '../utils/color_res.dart';

class AppStyle {

  static TextStyle get appLogoStyle => TextStyle(
    color: ColorRes.white,
    fontFamily: FontRes.permanentMarker,
    fontSize: 25
  );
  static TextStyle get winnerHeadingStyle => TextStyle(
    color: ColorRes.golden,
    fontFamily: FontRes.permanentMarker,
    fontSize: 18
  );
  static TextStyle get winnerTextStyle => TextStyle(
    color: ColorRes.white,
    fontFamily: FontRes.permanentMarker,
    fontSize: 24
  );
  static TextStyle get headingStyle => TextStyle(
    color: ColorRes.white,
    fontFamily: FontRes.permanentMarker,
    fontSize: 21
  );

  static TextStyle get subHeadingStyle => TextStyle(
    color: ColorRes.white,
    fontFamily: FontRes.permanentMarker,
    fontSize: 18
  );

  static TextStyle get copyrightStyle => TextStyle(
    color: ColorRes.white,
    fontFamily: FontRes.openSansLight,
    fontSize: 10,
  );
  static TextStyle get textStyle => TextStyle(
    color: ColorRes.white,
    fontFamily: FontRes.permanentMarker,
    fontSize: 16,
  );
  static TextStyle get errorTextStyle => TextStyle(
    color: ColorRes.redDark,
    fontFamily: FontRes.permanentMarker,
    fontSize: 16,
  );
  static TextStyle get textHeadingStyle => TextStyle(
    color: ColorRes.white,
    fontFamily: FontRes.permanentMarker,
    fontSize: 18,
  );
  static TextStyle get textSecondaryHeadingStyle => TextStyle(
    color: ColorRes.white,
    fontFamily: FontRes.openSansLight,
    fontSize: 14,
    fontWeight: FontWeight.bold
  );

  static TextStyle get hintStyle => TextStyle(
    color: ColorRes.greyMedium,
    fontFamily: FontRes.openSansLight,
    fontSize: 16,
  );

}