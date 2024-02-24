import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentation/manager/Featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
              height: 190.h,
              child: Padding(
                padding: EdgeInsets.only(right: 16.w),
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: state.books.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return SizedBox(
                        width: 150.w,
                        height: 190.h,
                        child: CustomBookImage(
                          imageUrl: state
                              .books[index].volumeInfo.imageLinks!.thumbnail,
                        ));
                  },
                ),
              ));
        } else if (state is FeaturedBooksFailure) {
          return Container(
              height: MediaQuery.of(context).size.height * 0.1,
              child: CustomErrorWidget(errorMessage: state.errorMessage));
        } else {
          return Container(
            height: MediaQuery.of(context).size.height * 0.2,
            child: CustomLoadingIndicator(),
          );
        }
      },
    );
  }
}
