
import 'package:flutter/material.dart';

import '../style/app_styles.dart';
import '../utils/color_res.dart';


class CustomButton extends StatefulWidget {

  final String title;
  final Function onTap;
  final BoxDecoration? decoration;
  final TextStyle? textStyle;
  final double? height;
  const CustomButton({super.key,
    required this.title,
    required this.onTap,
    this.decoration,
    this.textStyle,
    this.height
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
          minWidth: MediaQuery.of(context).size.width * .4,
          minHeight: widget.height ?? 45
      ),
      decoration: widget.decoration ?? BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorRes.white.withOpacity(.3)
      ),
      child: InkWell(
        onTap: () => widget.onTap(),
        borderRadius: BorderRadius.circular(15),
        child: Center(
          child: Text(
            widget.title,
            style: widget.textStyle ?? AppStyle.textStyle,
          ),
        ),
      ),
    );
  }
}

