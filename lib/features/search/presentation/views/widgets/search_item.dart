import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meals_app/features/home/data/model/meal_model.dart';
import 'package:meals_app/features/search/presentation/controller/search_cubit.dart';
import '../../../../../core/utils/styles.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({super.key, required this.mealModel, required this.index,});

  final MealModel mealModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 3),
                      color: Colors.grey[200]!,
                      spreadRadius: 5.0,
                      blurRadius: 5.0,
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: CachedNetworkImage(
                        imageUrl: mealModel.results![index].featuredImage!,
                        fit: BoxFit.cover,
                        width: 100.0,
                        height: 100.0,
                      ),
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            mealModel.results![index].title!,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Styles.textStyle20
                                .copyWith(fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            '💚 ${mealModel.results![index].rating!}',
                            style: Styles.textStyle18
                                .copyWith(color: Colors.grey, fontFamily: ''),
                          ),
                        ],
                      ),
                    ),
                    const Icon(Icons.keyboard_arrow_right_sharp)
                  ],
                ),
              ),
            ),
          );

      },
    );
  }
}
