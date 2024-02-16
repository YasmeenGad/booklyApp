import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBookRating extends StatelessWidget {
  const CustomBookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xFFFFDD4F),
        ),
        SizedBox(
          width: 6.3.w,
        ),
        Text(
          "4.8",
          style: Styles.txtstyle16,
        ),
        SizedBox(
          width: 5.w,
        ),
        Text(
          "(2390)",
          style: Styles.txtstyle14.copyWith(color: const Color(0xff707070)),
        )
      ],
    );
  }
}
