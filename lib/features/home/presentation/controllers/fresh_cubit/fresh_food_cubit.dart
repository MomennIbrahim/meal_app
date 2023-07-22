import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/model/meal_model.dart';
import '../../../data/repo/base_home_repo.dart';

part 'fresh_food_state.dart';

class FreshFoodCubit extends Cubit<FreshFoodState> {
  FreshFoodCubit(this.baseHomeRepo) : super(FreshFoodInitial());

  BaseHomeRepo baseHomeRepo;


  Future<void> getFreshFoodMeals()async{

    emit(FreshFoodLoadingState());

    var result = await baseHomeRepo.fetchMeals(query: "fresh food");

    result.fold((failure) {
      emit(FreshFoodFailureState(failure.errMessage));
    }, (freshFoodMeals) {
      emit(FreshFoodSuccessState(freshFoodMeals));
    });
  }
}
