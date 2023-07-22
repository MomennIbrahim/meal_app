part of 'chicken_cubit.dart';

@immutable
abstract class ChickenState {}

class ChickenInitial extends ChickenState {}

class ChickenSuccessState extends ChickenState {
  final MealModel mealModel;

  ChickenSuccessState(this.mealModel);
}

class ChickenFailureState extends ChickenState {
  final String errMessage;

  ChickenFailureState(this.errMessage);
}

class ChickenLoadingState extends ChickenState {}
