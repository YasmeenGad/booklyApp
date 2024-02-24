import 'package:bookly/core/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class NewestBooksItems extends StatelessWidget {
  const NewestBooksItems({required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: 110.h,
        child: Row(
          children: [
            AspectRatio(
                aspectRatio: 2.8 / 4,
                child: CustomBookImage(
                  imageUrl: bookModel.volumeInfo.imageLinks!.thumbnail,
                )),
            SizedBox(width: 20.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      "${bookModel.volumeInfo.title}",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          Styles.txtstyle20.copyWith(fontFamily: kGtSectraFine),
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(
                    "${bookModel.volumeInfo.authors![0]}",
                    style: Styles.txtstyle14,
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "Free",
                        style: Styles.txtstyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      CustomBookRating(
                        rating: bookModel.volumeInfo.averageRating ?? 0,
                        count: bookModel.volumeInfo.ratingsCount ?? 0,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
