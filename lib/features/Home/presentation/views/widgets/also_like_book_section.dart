import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../core/utils/helper/styles_helper.dart';
import 'suggested_books_list_view.dart';


class AlsoLikeBooksSection extends StatelessWidget {
  const AlsoLikeBooksSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You Can Also Like',
          style: BooklyStyles.textStyle14400.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        const SuggestedBooksListView(),
      ],
    );
  }
}
