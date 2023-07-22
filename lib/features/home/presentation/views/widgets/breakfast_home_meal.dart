import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:meals_app/core/utils/app_router.dart';
import 'package:meals_app/core/widgets/custom_home_meal_loading.dart';
import 'package:meals_app/features/home/presentation/controllers/breakfast_cubit/home_breakfast_cubit.dart';
import 'package:meals_app/features/home/presentation/views/meal_details_view.dart';

import '../../../../../core/utils/styles.dart';

class BreakfastHomeMeal extends StatelessWidget {
  const BreakfastHomeMeal({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBreakfastCubit, HomeBreakfastState>(
      builder: (context, state) {
        if (state is HomeBreakFastSuccessState) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MealDetailsView(
                          mealModel: state.mealModel, index: 4)));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 3),
                          color: Colors.grey[300]!,
                          spreadRadius: 5,
                          blurRadius: 5)
                    ]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height / 5,
                        width: 110.0,
                        child: Image(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                state.mealModel.results![4].featuredImage!)),
                      ),
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    Expanded(
                        child: Text(
                      state.mealModel.results![4].title!,
                      style: Styles.textStyle25,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    )),
                  ],
                ),
              ),
            ),
          );
        } else if (state is HomeBreakFastFailureState) {
          return Center(
            child: Text(
              state.errMessage,
              style: Styles.textStyle30,
            ),
          );
        } else {
          return const Center(
            child: CustomHomeMealLoading(),
          );
        }
      },
    );
  }
}
