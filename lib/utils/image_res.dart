
import 'package:flutter/material.dart';

class ImageRes {

  static String get image => "assets/images";
  static String get imgTicTacToe => "$image/img_tic_tac_toe.jpg";
  static String get icVolumeWhite => "$image/ic_volume_white.png";
  static String get icVolumeBlack => "$image/ic_volume_black.png";
  static String get icInfoBlack => "$image/ic_info_black.png";
  static String get icInfoWhite => "$image/ic_info_white.png";
  static String get icTermsAndConditionsBlack => "$image/ic_terms_and_conditions_black.png";
  static String get icTermsAndConditionsWhite => "$image/ic_terms_and_conditions_white.png";
  static String get icLetterO => "$image/ic_letter_o_white.png";
  static String get icLetterX => "$image/ic_letter_x_white.png";
  static String get icWinner => "$image/ic_winner.png";
  static String get icAthleteBlack => "$image/ic_athlete_black.png";
  static String get icAthleteWhite => "$image/ic_athlete_white.png";

  bool isDarkMode = false;
  ImageRes.of(BuildContext context) {
    isDarkMode = Theme.of(context).brightness == Brightness.dark;
  }

}