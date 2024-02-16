import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBookRating extends StatelessWidget {
  const CustomBookRating({this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: <Widget>[
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xFFFFDD4F),
          size: 16.sp,
        ),
        SizedBox(
          width: 6.w,
        ),
        Text(
          "4.8",
          style: Styles.txtstyle16,
        ),
        SizedBox(
          width: 5.w,
        ),
        Opacity(
          opacity: 0.5,
          child: Text(
            "(2390)",
            style: Styles.txtstyle14,
          ),
        )
      ],
    );
  }
}
