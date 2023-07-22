import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meals_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:meals_app/features/home/presentation/views/widgets/custom_meals_list_view.dart';
import '../../../../core/widgets/custom_widget_error.dart';
import '../../../../core/widgets/custom_widget_loading.dart';
import '../controllers/spaghetti_cubit/spaghetti_cubit.dart';

class SpaghettiMealsView extends StatelessWidget {
  const SpaghettiMealsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpaghettiCubit, SpaghettiState>(builder: (context, state) {
      if (state is SpaghettiSuccessState) {
        return Scaffold(
          body: Column(
            children: [
              const SizedBox(
                height: 40.0,
              ),
              const CustomAppBar(text1: "Spaghetti ", text2: "meals"),
              CustomMealsListView(
                mealModel: state.mealModel,
              )
            ],
          ),
        );
      } else if (state is SpaghettiFailureState) {
        return CustomErrorWidget(errMessage: state.errMessage);
      } else {
        return const CustomLoadingWidget();
      }
    });;
  }
}
