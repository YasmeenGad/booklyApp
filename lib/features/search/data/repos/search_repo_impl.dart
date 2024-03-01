import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImp implements SearchRepo {
  final List<BookModel> books;

  SearchRepoImp(this.books);

  @override
  Future<Either<Failures, List<BookModel>>> searchBooks(
      {required String searchKey}) async {
    try {
      List<BookModel> searchResults = [];

      // Search within the list of books
      for (int i = 0; i < books.length; i++) {
        if (books[i].volumeInfo.title!.contains(searchKey.toLowerCase())) {
          searchResults.add(books[i]);
        }
      }
      return right(searchResults);
    } catch (e) {
      // ignore: deprecated_member_use
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }

      return left(ServerFailure("${e.toString()}"));
    }
  }
}
