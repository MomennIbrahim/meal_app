part of 'home_breakfast_cubit.dart';

abstract class HomeBreakfastState {}

class HomeBreakfastInitial extends HomeBreakfastState {}

class HomeBreakFastLoadingState extends HomeBreakfastState{}
class HomeBreakFastSuccessState extends HomeBreakfastState{
  final MealModel mealModel;

  HomeBreakFastSuccessState(this.mealModel);
}
class HomeBreakFastFailureState extends HomeBreakfastState{
  final String errMessage;

  HomeBreakFastFailureState(this.errMessage);
}
