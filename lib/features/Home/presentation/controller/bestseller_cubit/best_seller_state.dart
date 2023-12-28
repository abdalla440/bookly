part of 'best_seller_cubit.dart';

@immutable
abstract class BestSellerState {}

class BestSellerInitialState extends BestSellerState {}

class BestSellerLoadingState extends BestSellerState {}

class BestSellerFailState extends BestSellerState {
  final String errorMessage;

  BestSellerFailState(this.errorMessage);
}

class BestSellerSuccessState extends BestSellerState {
  final List<BookModel> booksList;

  BestSellerSuccessState(this.booksList);
}
