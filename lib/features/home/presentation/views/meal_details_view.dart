import 'package:flutter/material.dart';
import 'package:meals_app/features/home/presentation/views/widgets/meal_details_view_body.dart';
import '../../data/model/meal_model.dart';

class MealDetailsView extends StatelessWidget {
  const MealDetailsView({super.key, required this.mealModel,required  this.index});

  final MealModel mealModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return  SelectionArea(
      child: Scaffold(
        body: MealDetailsViewBody(mealModel: mealModel,index: index),
      ),
    );
  }
}
