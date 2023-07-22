import 'package:bloc/bloc.dart';
import 'package:meals_app/features/home/data/model/meal_model.dart';
import 'package:meals_app/features/home/data/repo/base_home_repo.dart';
import 'package:meta/meta.dart';

part 'chicken_state.dart';

class ChickenCubit extends Cubit<ChickenState> {
  ChickenCubit(this.baseHomeRepo) : super(ChickenInitial());

  BaseHomeRepo baseHomeRepo;


  Future<void> getChickenMeals()async{

    emit(ChickenLoadingState());

    var result = await baseHomeRepo.fetchMeals(query: "chicken");

    result.fold((failure) {
      emit(ChickenFailureState(failure.errMessage));
    }, (chickenMeal) {
      emit(ChickenSuccessState(chickenMeal));
    });
  }
}
