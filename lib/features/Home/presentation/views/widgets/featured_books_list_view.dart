import 'package:flutter/material.dart';

import 'books_list_view_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.3,
        child: ListView.separated(
          itemBuilder: (context, index) => const BooksListViewItem(),
          scrollDirection: Axis.horizontal,
          itemCount: 20,
          separatorBuilder: (context, index) => const SizedBox(
            width: 16,
          ),
        ),
      ),
    );
  }
}
