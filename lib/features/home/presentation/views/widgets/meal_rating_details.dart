import 'package:flutter/material.dart';
import 'package:meals_app/core/utils/styles.dart';

class MealRatingDetails extends StatelessWidget {
  const MealRatingDetails({super.key, required this.rating});

  final int rating;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Text(
        '$rating People Like it 💚',
        style: Styles.textStyle20.copyWith(color: Colors.grey),
      ),
    );
  }
}
