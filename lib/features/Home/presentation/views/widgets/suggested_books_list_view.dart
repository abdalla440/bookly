import 'package:bookly/core/widgets/error_placeholder_widget.dart';
import 'package:bookly/core/widgets/loading_placeholder_widget.dart';
import 'package:bookly/features/Home/presentation/controller/similar_cubit/similar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'books_image_item.dart';

class SuggestedBooksListView extends StatelessWidget {
  const SuggestedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccessState){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.18,
              child: ListView.separated(
                itemBuilder: (context, index) => BookImageItem(
                    imagePath:state.booksList[index].volumeInfo.imageLinks.thumbnail),
                scrollDirection: Axis.horizontal,
                itemCount: state.booksList.length,
                separatorBuilder: (context, index) => const SizedBox(
                  width: 12,
                ),
              ),
            ),
          );
        }
        else if (state is SimilarBooksFailState) {
          return ErrorPlaceholderWidget(state.errorMessage);
        }
        else{
          return const LoadingPlaceholderWidget();
        }

      },
    );
  }
}
