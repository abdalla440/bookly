import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/features/Home/presentation/controller/similar_cubit/similar_cubit.dart';
import 'package:bookly/features/Home/presentation/views/widgets/book_details_body_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsScreenPage extends StatefulWidget {
  const BookDetailsScreenPage({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  State<BookDetailsScreenPage> createState() => _BookDetailsScreenPageState();
}

class _BookDetailsScreenPageState extends State<BookDetailsScreenPage> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
        bookCategory: widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_outlined)),
          ),
        ],
        backgroundColor: Colors.transparent,
      ),
      body: BookDetailsBodyWidget(bookModel:widget.bookModel),
    );
  }
}
