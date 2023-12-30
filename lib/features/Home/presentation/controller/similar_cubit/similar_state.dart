part of 'similar_cubit.dart';

@immutable
abstract class SimilarBooksState {}

class SimilarBooksInitialState extends SimilarBooksState {}

class SimilarBooksFailState extends SimilarBooksState {
  final String errorMessage;

  SimilarBooksFailState(this.errorMessage);
}

class SimilarBooksLoadingState extends SimilarBooksState {}

class SimilarBooksSuccessState extends SimilarBooksState {
  final List<BookModel> booksList;

  SimilarBooksSuccessState(this.booksList);
}
