import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40.h, bottom: 10.h),
      child: Row(
        children: <Widget>[
          Image.asset(
            AssetsData.logo,
            width: 120.w,
            height: 50.h,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              size: 30.sp,
            ),
          )
        ],
      ),
    );
  }
}
