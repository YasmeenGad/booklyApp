import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 190.h,
        child: Padding(
          padding: EdgeInsets.only(right: 16.w),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return SizedBox(
                  width: 150.w, height: 190.h, child: CustomBookImage());
            },
          ),
        ));
  }
}
