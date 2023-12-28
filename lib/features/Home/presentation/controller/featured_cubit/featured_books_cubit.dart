import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../../data/repos/home_repo.dart';


part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitialState());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    var results = await homeRepo.fetchFeaturedBooks();

    results.fold((failure) {
      emit(FeaturedBooksFailState(failure.errorMessage));
      }, (success) {
      emit(FeaturedBooksSuccessState(success));
    });
  }
}
