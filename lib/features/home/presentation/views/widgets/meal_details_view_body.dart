import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meals_app/features/home/data/repo/home_repo_implementation.dart';
import 'package:meals_app/features/home/presentation/controllers/beef_cubit/beef_cubit.dart';
import 'package:meals_app/features/home/presentation/views/widgets/ingredients_list_view_item.dart';
import '../../../../../core/utils/service_locator.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/model/meal_model.dart';
import 'meal_image_details.dart';
import 'meal_name_details.dart';
import 'meal_rating_details.dart';
import 'meal_source_url.dart';

class MealDetailsViewBody extends StatelessWidget {
  const MealDetailsViewBody({super.key, required this.mealModel,required this.index});

  final MealModel mealModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BeefCubit(getIt.get<HomeRepoImplementation>()),
      child: BlocBuilder<BeefCubit, BeefState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MealImageDetails(
                    image: mealModel.results![index].featuredImage!),
                const SizedBox(height: 20.0,),
                MealNameDetails(name: mealModel.results![index].title!),
                const SizedBox(
                  height: 10.0,
                ),
                MealRatingDetails(rating: mealModel.results![index].rating!),

                const SizedBox(
                  height: 30.0,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    'Ingredients',
                    style: Styles.textStyle20,
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                IngredientsItem(mealModel: mealModel,index: index),
                const SizedBox(
                  height: 30.0,
                ),
                MealSourceUrl(index: index,mealModel: mealModel),
                const SizedBox(height: 20.0,),
              ],
            ),
          );
        },
      ),
    );
  }
}
