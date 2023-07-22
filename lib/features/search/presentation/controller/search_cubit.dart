import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../../home/data/model/meal_model.dart';
import '../../../home/data/repo/base_home_repo.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.homeRepo) : super(SearchInitial());

  BaseHomeRepo homeRepo;

  Future<void> getSearch({required String mealName}) async {

    emit(SearchLoading());

    var result = await homeRepo.fetchMeals(query:mealName);

    result.fold((failure) {

      emit(SearchFailure(failure.errMessage));
    }, (searchMeal) {
      emit(SearchSuccess(searchMeal));
    });
  }
}
