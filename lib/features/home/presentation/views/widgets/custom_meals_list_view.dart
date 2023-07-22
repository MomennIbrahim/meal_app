import 'package:flutter/material.dart';
import 'package:meals_app/features/home/data/model/meal_model.dart';
import 'package:meals_app/features/home/presentation/views/meal_details_view.dart';
import 'package:meals_app/features/home/presentation/views/widgets/custom_meals_view_item.dart';

class CustomMealsListView extends StatelessWidget {
  const CustomMealsListView({super.key, required this.mealModel});

  final MealModel mealModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MealDetailsView(
                            mealModel: mealModel,
                            index: index,
                          )));
            },
            child: CustomMealsListViewItem(
              mealModel: mealModel,
              index: index,
            )),
        separatorBuilder: (context, index) => const SizedBox(
          height: 20.0,
        ),
        itemCount: mealModel.results!.length,
      ),
    );
  }
}
