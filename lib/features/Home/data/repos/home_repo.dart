import 'package:bookly/core/utils/errors/failures.dart';
import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {

  // return object of type Failure (left) in case of fail or error
  // in case everything is stable it returns list of BookModel  (right)

  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();

  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks();
}
