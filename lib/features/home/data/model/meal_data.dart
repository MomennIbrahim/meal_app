import 'package:equatable/equatable.dart';

class MealData extends Equatable{

  MealData.fromJson(dynamic json) {
    pk = json['pk'];
    title = json['title'];
    publisher = json['publisher'];
    featuredImage = json['featured_image'];
    rating = json['rating'];
    sourceUrl = json['source_url'];
    description = json['description'];
    cookingInstructions = json['cooking_instructions'];
    ingredients = json['ingredients'] != null ? json['ingredients'].cast<String>() : [];
    dateAdded = json['date_added'];
    dateUpdated = json['date_updated'];
    longDateAdded = json['long_date_added'];
    longDateUpdated = json['long_date_updated'];
  }
  int? pk;
  String? title;
  String? publisher;
  String? featuredImage;
  int? rating;
  String? sourceUrl;
  String? description;
  dynamic cookingInstructions;
  List<dynamic>? ingredients;
  String? dateAdded;
  String? dateUpdated;
  int? longDateAdded;
  int? longDateUpdated;

  @override

  List<Object?> get props => [
    pk,
    title,
    publisher,
    featuredImage,
    rating,
    sourceUrl,
    longDateUpdated,
    longDateAdded,
    dateUpdated,
    dateAdded,
    ingredients
  ];
}