import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'similar_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitialState());
  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String bookCategory}) async {
    var results = await homeRepo.fetchSimilarBooks(
      bookCategory: bookCategory,
    );

    results.fold((failure) {
      emit(SimilarBooksFailState(failure.errorMessage));
    }, (success) {
      emit(SimilarBooksSuccessState(success));
    });
  }
}
