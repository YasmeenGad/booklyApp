import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {required this.backgroundColor,
      required this.txt,
      this.borderRadius,
      required this.txtColor,
      this.fontSize});
  final Color backgroundColor;
  final String txt;
  final Color txtColor;
  final BorderRadius? borderRadius;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(16))),
        child: Text(
          txt,
          style: Styles.txtstyle18.copyWith(
              color: txtColor, fontWeight: FontWeight.w900, fontSize: fontSize),
        ),
      ),
    );
  }
}
