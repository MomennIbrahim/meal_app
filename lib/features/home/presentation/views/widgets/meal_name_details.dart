import 'package:flutter/material.dart';
import 'package:meals_app/constance.dart';

import '../../../../../core/utils/styles.dart';

class MealNameDetails extends StatelessWidget {
  const MealNameDetails({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Text(
        '$name meal',
        style: Styles.textStyle25,
      ),
    );
  }
}
