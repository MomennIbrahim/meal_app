import 'package:bloc/bloc.dart';
import 'package:meals_app/features/home/data/model/meal_model.dart';
import 'package:meta/meta.dart';

import '../../../data/repo/base_home_repo.dart';

part 'spaghetti_state.dart';

class SpaghettiCubit extends Cubit<SpaghettiState> {
  SpaghettiCubit(this.baseHomeRepo) : super(SpaghettiInitial());

  BaseHomeRepo baseHomeRepo;


  Future<void> getSpaghettiMeals()async{

    emit(SpaghettiLoadingState());

    var result = await baseHomeRepo.fetchMeals(query: "spaghetti");

    result.fold((failure) {
      emit(SpaghettiFailureState(failure.errMessage));
    }, (freshFoodMeals) {
      emit(SpaghettiSuccessState(freshFoodMeals));
    });
  }
}
