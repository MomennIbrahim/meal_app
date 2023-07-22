import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MealImageDetails extends StatelessWidget {
  const MealImageDetails({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 7,
            spreadRadius: 7,
            color: Colors.black26,
            offset: Offset(0,3),
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0)),
        child: CachedNetworkImage(
            fit: BoxFit.cover,
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 2.5,
            imageUrl: image),
      ),
    );
  }
}
