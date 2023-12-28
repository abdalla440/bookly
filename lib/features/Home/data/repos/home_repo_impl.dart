import 'package:bookly/core/utils/errors/failures.dart';
import 'package:bookly/core/utils/helper/api_helper.dart';
import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/features/Home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  HomeRepoImpl(this.dio);

  final ApiHelper dio;

  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() async {
    List<BookModel> booksList = [];
    String newestBooksEndPoint =
        'volumes?filter=free-ebooks&Sorting=newest&q=subject: programming';

    try {
      // try to get the data from endpoint
      var data = await dio.get(endPoint: newestBooksEndPoint);

      // loop through the returned data and map the elements to [BookModel]
      for (var book in data['items']) {
        booksList.add(BookModel.fromJson(book));
      }
      return right(booksList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    List<BookModel> booksList = [];
    String newestBooksEndPoint =
        'volumes?filter=free-ebooks&q=subject: programming';

    try {
      // try to get the data from endpoint
      var data = await dio.get(endPoint: newestBooksEndPoint);

      // loop through the returned data and map the elements to [BookModel]
      for (var book in data['items']) {
        booksList.add(BookModel.fromJson(book));
      }
      return right(booksList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
