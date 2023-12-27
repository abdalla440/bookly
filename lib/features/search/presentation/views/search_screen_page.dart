import 'package:bookly/core/utils/helper/colors_helper.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/helper/styles_helper.dart';
import 'widgets/search_screen_body_widget.dart';

class SearchScreenPage extends StatelessWidget {
  const SearchScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextField(
          style: BooklyStyles.textStyle18600,
          decoration: InputDecoration.collapsed(
            hintText: 'Search ...',
          ),
        ),
        backgroundColor: BooklyColors.kOrangeTextColor,
      ),
      body: const SearchScreenBodyWidget(),
    );
  }
}
