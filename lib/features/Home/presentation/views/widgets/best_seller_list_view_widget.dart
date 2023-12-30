import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/error_placeholder_widget.dart';
import '../../../../../core/widgets/loading_placeholder_widget.dart';
import '../../controller/bestseller_cubit/best_seller_cubit.dart';
import 'best_seller_books_view_item.dart';

class BestSellerBooksListView extends StatelessWidget {
  const BestSellerBooksListView({Key? key, this.scroll}) : super(key: key);
  final ScrollPhysics? scroll;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerCubit, BestSellerState>(
      builder: (context, state) {
        if (state is BestSellerSuccessState) {
          return ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: scroll ?? const NeverScrollableScrollPhysics(),
            itemCount: state.booksList.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: BestSellerBooksViewItem(bookModel: state.booksList[index]),
            ),
          );
        } else if (state is BestSellerFailState) {
          return ErrorPlaceholderWidget(state.errorMessage);
        }
        // case of loading (default)
        else {
          return const LoadingPlaceholderWidget();
        }
      },
    );
  }
}
