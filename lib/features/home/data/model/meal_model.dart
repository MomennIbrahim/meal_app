import 'package:equatable/equatable.dart';

import 'meal_data.dart';

class MealModel extends Equatable{

  MealModel.fromJson(dynamic json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results!.add(MealData.fromJson(v));
      });
    }
  }
  int? count;
  dynamic next;
  String? previous;
  List<MealData>? results;

  @override
  List<Object?> get props => [
    count,
    previous,
    results,
  ];


}