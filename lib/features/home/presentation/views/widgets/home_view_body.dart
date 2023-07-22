import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meals_app/core/utils/app_router.dart';
import 'package:meals_app/features/home/presentation/views/widgets/breakfast_home_meal.dart';
import 'package:meals_app/features/home/presentation/views/widgets/custom_breakfast_text.dart';
import 'package:meals_app/features/home/presentation/views/widgets/custom_categories_list_view_item.dart';
import 'package:meals_app/features/home/presentation/views/widgets/custom_home_image.dart';
import 'package:meals_app/features/home/presentation/views/widgets/custom_home_text.dart';
import 'package:meals_app/features/home/presentation/views/widgets/search_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 50.0,
                ),
                const CustomHomeText(),
                const CustomHomeImage(
                    imageUrl:
                        'https://nyc3.digitaloceanspaces.com/food2fork/food2fork-static/featured_images/155/featured_image.png'),
                const SizedBox(
                  height: 50.0,
                ),
                const CustomSubTitleText(text: 'Breakfast meals'),
                const SizedBox(
                  height: 15.0,
                ),
                const BreakfastHomeMeal(),
                const SizedBox(
                  height: 20.0,
                ),
                const CustomSubTitleText(text: 'Food categories'),
                const SizedBox(
                  height: 20.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Expanded(
                    child: Row(
                      children: [
                         CustomCategoriesItem(
                           onTap: (){
                             GoRouter.of(context).push(AppRouter.kBeefMealsView);
                           },
                          text: 'Beef',
                          imageUrl:
                              'https://nyc3.digitaloceanspaces.com/food2fork/food2fork-static/featured_images/96/featured_image.png',
                        ),
                         CustomCategoriesItem(
                           onTap: (){
                             GoRouter.of(context).push(AppRouter.kChickenMealsView);
                           },
                            text: 'Chicken',
                            imageUrl:
                                'https://nyc3.digitaloceanspaces.com/food2fork/food2fork-static/featured_images/2175/featured_image.png'),

                         CustomCategoriesItem(
                             onTap: (){
                               GoRouter.of(context).push(AppRouter.kFreshMealsView);
                             },
                            text: 'Fresh Food',
                            imageUrl:
                                'https://nyc3.digitaloceanspaces.com/food2fork/food2fork-static/featured_images/36/featured_image.png'),

                         CustomCategoriesItem(
                             onTap: (){
                               GoRouter.of(context).push(AppRouter.kSpaghettiMealsView);
                             },
                            text: 'spaghetti',
                            imageUrl:
                                'https://nyc3.digitaloceanspaces.com/food2fork/food2fork-static/featured_images/612/featured_image.png'),
                         CustomCategoriesItem(
                             onTap: (){
                               GoRouter.of(context).push(AppRouter.kCakeMealsView);
                             },
                            text: 'Cake',
                            imageUrl:
                                'https://nyc3.digitaloceanspaces.com/food2fork/food2fork-static/featured_images/35/featured_image.png'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SearchWidget(),
        ],
      ),
    );
  }
}
