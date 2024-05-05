
import 'package:flutter/material.dart';

import '../style/app_styles.dart';

class CustomUi {
  static showToast(BuildContext context, String msg) {
    final snackBar = SnackBar(
      content: Text(
          msg,
          style: AppStyle.errorTextStyle,
      ),
      backgroundColor: Colors.white,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}