// import 'package:bloc/bloc.dart';
// import 'package:meals_app/features/home/data/model/meal_data.dart';
// import 'package:meals_app/features/home/data/repo/base_home_repo.dart';
// import 'package:meta/meta.dart';
//
// part 'meal_details_state.dart';
//
// class MealDetailsCubit extends Cubit<MealDetailsState> {
//   MealDetailsCubit(this.homeRepo) : super(MealDetailsInitial());
//
//   BaseHomeRepo homeRepo;
//
//   Future<void> getMealDetails({required int id}) async {
//
//     var result = await homeRepo.fetchMealDetails(id: id);
//
//     result.fold((failure) {
//       emit(MealDetailsFailure(failure.errMessage));
//     }, (mealData) {
//       emit(MealDetailsSuccess(mealData));
//     });
//   }
// }
