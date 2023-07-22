import 'package:bloc/bloc.dart';
import 'package:meals_app/features/home/data/model/meal_model.dart';
import 'package:meals_app/features/home/data/repo/base_home_repo.dart';
import 'package:meta/meta.dart';

part 'beef_state.dart';

class BeefCubit extends Cubit<BeefState> {
  BeefCubit(this.homeRepo) : super(BeefInitial());

  BaseHomeRepo homeRepo;

  Future<void> getBeefMeals() async {
    emit(BeefLoadingState());

    var result = await homeRepo.fetchMeals(query: "beef");

    result.fold((failure) {
      emit(BeefFailureState(failure.errMessage));
    }, (beefMeals) {
      emit(BeefSuccessState(beefMeals));
    });
  }
}
