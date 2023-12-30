import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class BookImageItem extends StatelessWidget {
  const BookImageItem({Key? key, required this.imagePath}) : super(key: key);
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      child: AspectRatio(
        aspectRatio: 0.7,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imagePath,
        ),
      ),
    );
  }
}
