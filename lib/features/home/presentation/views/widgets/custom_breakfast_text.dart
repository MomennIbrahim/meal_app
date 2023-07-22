import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meals_app/core/utils/app_router.dart';
import '../../../../../core/utils/styles.dart';

class CustomSubTitleText extends StatelessWidget {
  const CustomSubTitleText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Styles.textStyle20.copyWith(
                fontWeight: FontWeight.w900),
          ),
          GestureDetector(
            onTap: (){
              GoRouter.of(context).push(AppRouter.kMealBreakfastView);
            },
            child: Text(
              'View all',
              style: Styles.textStyle16
                  .copyWith(color: const Color(0xff0e9c22)),
            ),
          ),
        ],
      ),
    );
  }
}
