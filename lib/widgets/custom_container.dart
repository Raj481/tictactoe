
import 'package:flutter/material.dart';
import '../utils/color_res.dart';

class CustomContainer extends StatelessWidget {
  final Widget? child ;
  final EdgeInsets? padding ;
  final EdgeInsets? margin ;
  final BoxDecoration? boxDecoration ;
  final BoxConstraints? constraints ;
  final double? width ;
  final double? height ;
  const CustomContainer({
    super.key,
    this.child,
    this.padding,
    this.margin,
    this.boxDecoration,
    this.constraints,
    this.width,
    this.height
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 45,
      width: width ?? double.infinity,
      padding: padding ?? EdgeInsets.zero,
      constraints: constraints ?? const BoxConstraints(),
      margin: margin ?? EdgeInsets.zero,
      decoration: boxDecoration ?? BoxDecoration(
          color: ColorRes.white,
          borderRadius: BorderRadius.circular(25)
      ),
      child: child,
    );
  }
}
