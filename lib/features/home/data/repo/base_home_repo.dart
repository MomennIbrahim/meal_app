import 'package:dartz/dartz.dart';
import 'package:meals_app/core/errors/errors.dart';
import '../model/meal_model.dart';


abstract class BaseHomeRepo {
  Future<Either<Failure,MealModel>> fetchMeals({required String query});
}