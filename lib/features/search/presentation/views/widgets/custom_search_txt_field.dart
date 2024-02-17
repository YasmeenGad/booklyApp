import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTxtField extends StatelessWidget {
  const CustomSearchTxtField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: buildOutLineInputBorder(),
        focusedBorder: buildOutLineInputBorder(),
        hintText: "Search...",
        suffixIcon: IconButton(
          icon: Opacity(
            opacity: 0.8,
            child: FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              size: 25.sp,
            ),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}

OutlineInputBorder buildOutLineInputBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Colors.white,
      ));
}
