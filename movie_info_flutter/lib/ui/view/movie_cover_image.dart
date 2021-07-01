import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_info_flutter/shared/utils/constrants.dart';

class MovieCoverImage extends StatelessWidget{

  final String imageUrl;
  final double width;
  final double height;

  MovieCoverImage(this.imageUrl, this.width, this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        child: Image(
          image: CachedNetworkImageProvider(imageUrl),
          fit: BoxFit.cover,
          width: width,
          height: height,
        ),
        borderRadius: BorderRadius.circular(margin2),
      ),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(margin20)),
    );
  }
}
