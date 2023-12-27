import 'package:flutter/material.dart';

import '../../../../Home/presentation/views/widgets/best_seller_list_view_widget.dart';

class SearchScreenBodyWidget extends StatelessWidget {
  const SearchScreenBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 8.0,
        left: 30.0,
        right: 30.0,
      ),
      child: BestSellerBooksListView(
        scroll: AlwaysScrollableScrollPhysics(),
      ),
    );
  }
}
