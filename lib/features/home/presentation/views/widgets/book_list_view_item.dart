import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/newest_books_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: NewestBooksItems(bookModel: state.books[index]),
              );
            },
          );
        } else if (state is NewestBooksFailure) {
          return Container(
              height: MediaQuery.of(context).size.height * 0.4,
              child: CustomErrorWidget(errorMessage: state.errorMessage));
        } else {
          return Container(
            height: MediaQuery.of(context).size.height * 0.7,
            child: CustomLoadingIndicator(),
          );
        }
      },
    );
  }
}
