import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meals_app/features/home/presentation/controllers/chicken_cubit/chicken_cubit.dart';
import 'package:meals_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:meals_app/features/home/presentation/views/widgets/custom_meals_list_view.dart';
import '../../../../core/widgets/custom_widget_error.dart';
import '../../../../core/widgets/custom_widget_loading.dart';

class ChickenMealsBody extends StatelessWidget {
  const ChickenMealsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChickenCubit, ChickenState>(builder: (context, state) {
      if (state is ChickenSuccessState) {
        return Scaffold(
          body: Column(
            children: [
              const SizedBox(
                height: 40.0,
              ),
              const CustomAppBar(text1: "Chicken ", text2: "meals"),
              CustomMealsListView(
                mealModel: state.mealModel,
              )
            ],
          ),
        );
      } else if (state is ChickenFailureState) {
        return CustomErrorWidget(errMessage: state.errMessage);
      } else {
        return const CustomLoadingWidget();
      }
    });
  }
}
