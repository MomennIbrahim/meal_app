import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meals_app/core/widgets/custom_widget_error.dart';
import 'package:meals_app/core/widgets/custom_widget_loading.dart';
import 'package:meals_app/features/home/presentation/controllers/breakfast_cubit/home_breakfast_cubit.dart';
import 'package:meals_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:meals_app/features/home/presentation/views/widgets/custom_meals_list_view.dart';

class BreakfastMealsListView extends StatelessWidget {
  const BreakfastMealsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBreakfastCubit,HomeBreakfastState>(
      builder:(context,state){
        if(state is HomeBreakFastSuccessState) {
          return Scaffold(
          body: Column(
            children: [
              const SizedBox(
                height: 40.0,
              ),
              const CustomAppBar(text1: "Breakfast ", text2: "meals"),
              CustomMealsListView(
              mealModel: state.mealModel,
              )
            ],
          ),
        );
        }else if(state is HomeBreakFastFailureState)
          {
            return CustomErrorWidget(errMessage: state.errMessage);
          }else{
          return const CustomLoadingWidget();
        }
      }
    );
  }
}
