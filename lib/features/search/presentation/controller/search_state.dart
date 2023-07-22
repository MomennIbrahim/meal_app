part of 'search_cubit.dart';

@immutable
abstract class SearchState {}

class SearchInitial extends SearchState {}

class SearchSuccess extends SearchState {
  final MealModel mealData;

  SearchSuccess(this.mealData);
}
class SearchFailure extends SearchState {
  final String errMessage;

  SearchFailure(this.errMessage);
}
class SearchLoading extends SearchState {}
