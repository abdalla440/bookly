import 'package:flutter/material.dart';

class BooklyTextButton extends StatelessWidget {
  const BooklyTextButton({
    Key? key,
    required this.text,
    required this.backgroundColor,
    required this.borderRadius,
    this.height,
  }) : super(key: key);

  final Text text;
  final Color backgroundColor;
  final BorderRadius borderRadius;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius,
            )),
        child: text,
      ),
    );
  }
}
