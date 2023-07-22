import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:meals_app/core/utils/api_service.dart';
import 'package:meals_app/core/utils/service_locator.dart';
import 'package:meals_app/features/home/data/model/meal_model.dart';
import 'package:meals_app/features/home/data/repo/home_repo_implementation.dart';
import 'package:meals_app/features/home/presentation/controllers/beef_cubit/beef_cubit.dart';
import 'package:meals_app/features/home/presentation/controllers/breakfast_cubit/home_breakfast_cubit.dart';
import 'package:meals_app/features/home/presentation/controllers/cake_cubit/cake_cubit.dart';
import 'package:meals_app/features/home/presentation/controllers/chicken_cubit/chicken_cubit.dart';
import 'package:meals_app/features/home/presentation/controllers/spaghetti_cubit/spaghetti_cubit.dart';
import 'package:meals_app/features/home/presentation/views/beef_meals_body.dart';
import 'package:meals_app/features/home/presentation/views/breakfast_meals_body.dart';
import 'package:meals_app/features/home/presentation/views/chicken_meals_body.dart';
import 'package:meals_app/features/home/presentation/views/meal_details_view.dart';
import 'package:meals_app/features/search/presentation/views/search_view.dart';
import 'package:meals_app/features/splash/presentation/views/splash_view.dart';
import '../../features/home/data/model/meal_data.dart';
import '../../features/home/presentation/controllers/fresh_cubit/fresh_food_cubit.dart';
import '../../features/home/presentation/views/cake_meals_body.dart';
import '../../features/home/presentation/views/fresh_food_meals_body.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/home/presentation/views/spaghetti_meals_body.dart';
import '../../features/search/presentation/controller/search_cubit.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBeefMealsView = '/beefMealsView';
  static const kChickenMealsView = '/chickenMealsView';
  static const kFreshMealsView = '/freshMealsView';
  static const kSpaghettiMealsView = '/spaghettiMealsView';
  static const kCakeMealsView = '/cakeMealsView';
  static const kMealBreakfastView = '/mealBreakfastView';
  static const kSearchView = '/searchView';

  static final GoRouter router = GoRouter(routes: [
    GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        }),
    GoRoute(
      path: kHomeView,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeView();
      },
    ),
    GoRoute(
      path: kFreshMealsView,
      builder: (BuildContext context, GoRouterState state) {
        return BlocProvider(
            create: (BuildContext context) =>
                FreshFoodCubit(getIt.get<HomeRepoImplementation>())
                  ..getFreshFoodMeals(),
            child: const FreshFoodMealsView());
      },
    ),
    GoRoute(
      path: kCakeMealsView,
      builder: (BuildContext context, GoRouterState state) {
        return BlocProvider(
            create: (BuildContext context) =>
                CakeCubit(getIt.get<HomeRepoImplementation>())..getCakeMeals(),
            child: const CakeMealsBody());
      },
    ),
    GoRoute(
      path: kSpaghettiMealsView,
      builder: (BuildContext context, GoRouterState state) {
        return BlocProvider(
            create: (BuildContext context) =>
                SpaghettiCubit(getIt.get<HomeRepoImplementation>())
                  ..getSpaghettiMeals(),
            child: const SpaghettiMealsView());
      },
    ),
    GoRoute(
      path: kChickenMealsView,
      builder: (BuildContext context, GoRouterState state) {
        return BlocProvider(
            create: (BuildContext context) =>
                ChickenCubit(getIt.get<HomeRepoImplementation>())
                  ..getChickenMeals(),
            child: const ChickenMealsBody());
      },
    ),
    GoRoute(
      path: kBeefMealsView,
      builder: (BuildContext context, GoRouterState state) {
        return BlocProvider(
            create: (BuildContext context) =>
                BeefCubit(getIt.get<HomeRepoImplementation>())..getBeefMeals(),
            child: const BeefMealsListView());
      },
    ),
    GoRoute(
      path: kMealBreakfastView,
      builder: (BuildContext context, GoRouterState state) {
        return BlocProvider(
            create: (BuildContext context) =>
                HomeBreakfastCubit(getIt.get<HomeRepoImplementation>())
                  ..getBreakfastMeals(),
            child: const BreakfastMealsListView());
      },
    ),
    GoRoute(
      path: kSearchView,
      builder: (BuildContext context, GoRouterState state) {
        return BlocProvider(
            create: (BuildContext context) =>
                SearchCubit(getIt.get<HomeRepoImplementation>()),
            child: const SearchView());
      },
    ),
  ]);
}
