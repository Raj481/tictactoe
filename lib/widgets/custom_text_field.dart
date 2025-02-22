
import 'package:flutter/material.dart';

import '../utils/color_res.dart';

class CustomTextField extends StatelessWidget {

  final TextEditingController? controller;
  final String? hintText;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
  final InputDecoration? inputDecoration;
  final BoxDecoration? boxDecoration;

  final Function(String value)? onChanged;
  const CustomTextField({
    super.key,
    this.controller,
    this.inputDecoration,
    this.boxDecoration,
    this.hintText,
    this.hintStyle,
    this.textStyle,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 15
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 15
        ),
        decoration: boxDecoration ?? BoxDecoration(
          color: ColorRes.white.withOpacity(.3),
          borderRadius: BorderRadius.circular(10)
        ),
        child: TextField(
          controller: controller ?? TextEditingController(),
          style: textStyle ?? TextStyle(
              color: ColorRes.primaryBlack,
              fontSize: 14
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText ?? "",
            hintStyle: hintStyle ?? TextStyle(
              color: ColorRes.greyMedium,
              fontSize: 14
            )
          ),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
