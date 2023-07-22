import 'package:bloc/bloc.dart';
import 'package:meals_app/features/home/data/model/meal_model.dart';
import 'package:meals_app/features/home/data/repo/base_home_repo.dart';
import 'package:meta/meta.dart';
part 'cake_state.dart';

class CakeCubit extends Cubit<CakeState> {
  CakeCubit(this.baseHomeRepo) : super(CakeInitial());

  BaseHomeRepo baseHomeRepo;


  Future<void> getCakeMeals()async{

    emit(CakeLoadingState());

    var result = await baseHomeRepo.fetchMeals(query: "cake");

    result.fold((failure) {
      emit(CakeFailureState(failure.errMessage));
    }, (cakeMeal) {
      emit(CakeSuccessState(cakeMeal));
    });
  }
}
