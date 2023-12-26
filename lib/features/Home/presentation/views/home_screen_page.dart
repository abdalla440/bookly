import 'package:bookly/features/Home/presentation/views/widgets/home_screen_body_widget.dart';
import 'package:flutter/material.dart';

class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeScreenBodyWidget(),
    );
  }
}
