import 'package:bloc/bloc.dart';
import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/features/Home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'best_seller_state.dart';

class BestSellerCubit extends Cubit<BestSellerState> {
  BestSellerCubit(this.homeRepo) : super(BestSellerInitialState());
  final HomeRepo homeRepo;

  Future<void> fetchBestSellerBooks() async {
    var result = await homeRepo.fetchBestSellerBooks();
    result.fold(
      (failure) => {
        emit(
          BestSellerFailState(failure.errorMessage),
        ),
      },
      (success) => {
        emit(
          BestSellerSuccessState(success),
        ),
      },
    );
  }
}
