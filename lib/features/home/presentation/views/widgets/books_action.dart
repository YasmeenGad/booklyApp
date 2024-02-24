import 'package:bookly/core/utils/functions/launch_url.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              backgroundColor: Colors.white,
              txt: "Free",
              txtColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async {
                customLaunchUrl(context, bookModel.volumeInfo.previewLink!);
              },
              fontSize: 16.sp,
              backgroundColor: Color(0xFFEF8262),
              txt: getText(),
              txtColor: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
            ),
          ),
        ],
      ),
    );
  }

  String getText() {
    if (bookModel.volumeInfo.previewLink == null) {
      return 'Not available';
    } else {
      return 'Preview';
    }
  }
}
