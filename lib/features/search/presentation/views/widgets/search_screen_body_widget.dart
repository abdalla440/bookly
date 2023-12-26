import 'package:bookly/features/Home/presentation/views/widgets/best_seller_list_view_widget.dart';
import 'package:flutter/material.dart';

class SearchScreenBodyWidget extends StatelessWidget {
  const SearchScreenBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 8.0,
      ),
      child: BestSellerBooksListView(
        scroll: AlwaysScrollableScrollPhysics(),
      ),
    );
  }
}
