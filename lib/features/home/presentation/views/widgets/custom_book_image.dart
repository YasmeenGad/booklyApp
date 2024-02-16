import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170.w,
      height: 210.h,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Padding(
          padding: EdgeInsets.only(right: 12.w),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  AssetsData.testImage,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
