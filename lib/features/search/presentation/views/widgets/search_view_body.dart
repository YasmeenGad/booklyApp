import 'package:bookly/features/search/presentation/views/widgets/custom_search_txt_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 16.h),
      child: Column(
        children: [
          CustomSearchTxtField(),
        ],
      ),
    );
  }
}
