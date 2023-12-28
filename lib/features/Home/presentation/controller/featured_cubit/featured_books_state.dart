part of 'featured_books_cubit.dart';

@immutable
abstract class FeaturedBooksState {}

class FeaturedBooksInitialState extends FeaturedBooksState {}

class FeaturedBooksLoadingState extends FeaturedBooksState {}

class FeaturedBooksFailState extends FeaturedBooksState {
  final String errorMessage;

  FeaturedBooksFailState(this.errorMessage);
}

class FeaturedBooksSuccessState extends FeaturedBooksState {
  final List<BookModel> booksList;

  FeaturedBooksSuccessState(this.booksList);
}
