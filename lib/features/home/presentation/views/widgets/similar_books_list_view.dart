import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: AspectRatio(
                          aspectRatio: 2.6 / 4,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: CachedNetworkImage(
                              fit: BoxFit.fill,
                              imageUrl: state.books[index].volumeInfo.imageLinks
                                      ?.thumbnail ??
                                  '',
                              placeholder: (context, url) => const Center(
                                  child: CircularProgressIndicator()),
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                            ),
                          )));
                }),
          );
        } else if (state is SimilarBooksFailure) {
          return Container(
              height: MediaQuery.of(context).size.height * 0.2,
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
