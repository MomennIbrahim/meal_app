import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:meals_app/core/utils/styles.dart';
import 'package:meals_app/features/home/data/model/meal_model.dart';

import '../../../../../constance.dart';

class CustomMealsListViewItem extends StatelessWidget {
  const CustomMealsListViewItem({
    super.key,
    required this.mealModel,
    required this.index,
  });

  final MealModel mealModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 3),
                color: Colors.grey[200]!,
                spreadRadius: 5,
                blurRadius: 5,
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: CachedNetworkImage(
                  imageUrl: mealModel.results![index].featuredImage!,
                  fit: BoxFit.cover,
                  width: 100.0,
                  height: 100.0,
                ),
              ),
              const SizedBox(
                width: 15.0,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      mealModel.results![index].title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20
                          .copyWith(fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      '💚 ${mealModel.results![index].rating!} likes',
                      style: Styles.textStyle18.copyWith(
                        color: Colors.grey,
                        fontFamily: kNotoSerif,
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.keyboard_arrow_right_sharp)
            ],
          ),
        ),
      ),
    );
  }
}
