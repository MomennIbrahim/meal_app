import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meals_app/core/widgets/custom_widget_error.dart';
import 'package:meals_app/core/widgets/custom_widget_loading.dart';
import 'package:meals_app/features/home/presentation/views/meal_details_view.dart';
import 'package:meals_app/features/search/presentation/controller/search_cubit.dart';
import 'package:meals_app/features/search/presentation/views/widgets/search_item.dart';

class ListViewSearch extends StatelessWidget {
  const ListViewSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          return ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MealDetailsView(
                              mealModel: state.mealData, index: index)));
                },
                child: SearchItem(mealModel: state.mealData, index: index)),
            itemCount: state.mealData.results!.length,
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(
              height: 10.0,
            ),
          );
        } else if (state is SearchFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else if (state is SearchLoading) {
          return const CustomLoadingWidget();
        } else {
          return const Center(
            child: Text('Search food items (use english words)'),
          );
        }
      },
    );
  }
}
