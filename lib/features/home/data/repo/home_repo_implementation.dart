import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:meals_app/core/errors/errors.dart';
import 'package:meals_app/core/utils/api_service.dart';
import 'package:meals_app/features/home/data/model/meal_model.dart';
import 'package:meals_app/features/home/data/repo/base_home_repo.dart';

import '../model/meal_data.dart';

class HomeRepoImplementation implements BaseHomeRepo {
  final ApiService apiService;

  HomeRepoImplementation(this.apiService);

  @override
  Future<Either<Failure, MealModel>> fetchMeals({required String query}) async {
    try {
      var data = await apiService.getData(
        endPoint: 'api/recipe/search/?page=2&query=$query',
      );

      MealModel meals = MealModel.fromJson(data);
      return right(meals);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, MealModel>> fetchSearch({required String id}) async {
    try {
      var data = await apiService.getData(
          endPoint: 'api/recipe/get/?id=$id)');

      MealModel mealModel = MealModel.fromJson(data);

      return right(mealModel);
    }catch(e){
      if(e is DioException)
        {
          return left(ServerFailure.fromDioError(e));
        }else{
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
