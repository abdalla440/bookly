import 'package:bookly/core/utils/helper/styles_helper.dart';
import 'package:flutter/material.dart';

class ErrorPlaceholderWidget extends StatelessWidget {
  final String errorMessage;

  const ErrorPlaceholderWidget(this.errorMessage, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMessage,
        textAlign: TextAlign.center,
        style: BooklyStyles.textStyle16500,
      ),
    );
  }
}