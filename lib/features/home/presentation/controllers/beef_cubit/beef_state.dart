part of 'beef_cubit.dart';

@immutable
abstract class BeefState {}

class BeefInitial extends BeefState {}

class BeefSuccessState extends BeefState {
 final MealModel mealModel;

  BeefSuccessState(this.mealModel);
}
class BeefFailureState extends BeefState {
  final String errMessage;

  BeefFailureState(this.errMessage);
}
class BeefLoadingState extends BeefState {}
