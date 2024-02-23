import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImp implements HomeRepo{
  @override
  Future<Either<Failures, List<BookModel>>> fetchBestSallerBooks() {
    
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() {

  }
  
}