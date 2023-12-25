import 'package:flutter/material.dart';
import 'custom_navigation_bar.dart';
import 'featured_books_list_view.dart';

class HomeScreenBodyWidget extends StatelessWidget {
  const HomeScreenBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomNavigationBar(),
        FeaturedBooksListView(),
      ],
    );
  }
}

