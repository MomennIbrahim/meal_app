import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meals_app/features/home/data/repo/base_home_repo.dart';
import 'package:meta/meta.dart';
import '../../../data/model/meal_model.dart';
part 'home_breakfast_state.dart';

class HomeBreakfastCubit extends Cubit<HomeBreakfastState> {
  HomeBreakfastCubit(this.homeRepo) : super(HomeBreakfastInitial());

  final BaseHomeRepo homeRepo;

  Future<void> getBreakfastMeals() async {
    emit(HomeBreakFastLoadingState());

    var result = await homeRepo.fetchMeals(query:'breakfast');

    result.fold((failure) {
      emit(HomeBreakFastFailureState(failure.errMessage));
    },
        (breakfastMeals) => {
          emit(
            HomeBreakFastSuccessState(breakfastMeals),
          )
        });
  }
}
