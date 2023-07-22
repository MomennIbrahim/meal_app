import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/model/meal_model.dart';

class IngredientsItem extends StatelessWidget {
  const IngredientsItem({super.key, required this.mealModel, required this.index});

  final MealModel mealModel ;
  final int index ;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Expanded(
        child: Container(
          decoration: BoxDecoration(
              borderRadius:  BorderRadius.circular(10.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius:7,
                  spreadRadius: 7,
                  color: Colors.grey[200]!,
                  offset: const Offset(0,3),
                )
              ]
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('${mealModel.results![index].ingredients!.map((e) {
              return e;
            }).toList()}',
              style:
              Styles.textStyle18.copyWith(fontWeight: FontWeight.w300),
            ),
          ),
        ),
      ),
    );
  }
}
