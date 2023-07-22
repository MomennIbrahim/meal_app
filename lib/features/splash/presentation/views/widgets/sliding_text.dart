import 'package:flutter/material.dart';
import 'package:meals_app/core/utils/styles.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({super.key, required this.text, required this.slidingAnimation,required this.style});

  final String text;
  final Animation<Offset> slidingAnimation;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
              position: slidingAnimation,
              child: Text(
                text,
                style: style,
              ));
        });
  }
}
