import 'package:bookly/features/Home/presentation/views/widgets/book_details_body_widget.dart';
import 'package:flutter/material.dart';

class BookDetailsScreenPage extends StatelessWidget {
  const BookDetailsScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        actions:  [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: IconButton(onPressed: (){

            }, icon: const Icon(Icons.shopping_cart_outlined)),
          ),
        ],

        backgroundColor: Colors.transparent,
      ),
      body: const BookDetailsBodyWidget(),
    );
  }
}
