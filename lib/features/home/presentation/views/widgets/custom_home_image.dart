import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomHomeImage extends StatelessWidget {
  const CustomHomeImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(topLeft: Radius.circular(30.0),bottomRight: Radius.circular(30.0)),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        fit: BoxFit.cover,
        useOldImageOnUrlChange: true,
        height: MediaQuery
          .of(context)
          .size
          .height / 3.7, width: double.infinity,),
    );
  }
}

// Container
// (
// width: double.infinity,
// height: ,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(16.0),
// image: DecorationImage(
// image: NetworkImage(
// imageUrl),fit: BoxFit.cover)),
// )
