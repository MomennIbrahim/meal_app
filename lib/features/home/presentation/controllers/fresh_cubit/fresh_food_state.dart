part of 'fresh_food_cubit.dart';

@immutable
abstract class FreshFoodState {}

class FreshFoodInitial extends FreshFoodState {}

class FreshFoodSuccessState extends FreshFoodState {
  final MealModel mealModel;

  FreshFoodSuccessState(this.mealModel);
}
class FreshFoodFailureState extends FreshFoodState {
  final String errMessage;

  FreshFoodFailureState(this.errMessage);
}
class FreshFoodLoadingState extends FreshFoodState {}
