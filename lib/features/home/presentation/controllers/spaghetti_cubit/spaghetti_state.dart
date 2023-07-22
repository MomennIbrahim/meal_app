part of 'spaghetti_cubit.dart';

@immutable
abstract class SpaghettiState {}

class SpaghettiInitial extends SpaghettiState {}

class SpaghettiSuccessState extends SpaghettiState {
  final MealModel mealModel;

  SpaghettiSuccessState(this.mealModel);
}
class SpaghettiFailureState extends SpaghettiState {
  final String errMessage;

  SpaghettiFailureState(this.errMessage);
}
class SpaghettiLoadingState extends SpaghettiState {}
