import 'package:flutter/material.dart';
import 'package:meals_app/features/home/data/model/meal_model.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../core/utils/styles.dart';

class MealSourceUrl extends StatelessWidget {
  const MealSourceUrl(
      {super.key, required this.mealModel, required this.index});

  final MealModel mealModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Website Link: ',
              style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w900),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () async {
                  final Uri url =
                      Uri.parse('${mealModel.results![index].sourceUrl}');

                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  }
                },
                child: Text(
                  mealModel.results![index].sourceUrl!,
                  style: Styles.textStyle16.copyWith(color: Colors.blue),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
