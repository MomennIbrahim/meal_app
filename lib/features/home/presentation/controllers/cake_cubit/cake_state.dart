part of 'cake_cubit.dart';

@immutable
abstract class CakeState {}

class CakeInitial extends CakeState {}

class CakeSuccessState extends CakeState {
  final MealModel mealModel;

  CakeSuccessState(this.mealModel);
}
class CakeFailureState extends CakeState {
  final String errMessage;

  CakeFailureState(this.errMessage);
}
class CakeLoadingState extends CakeState {}
