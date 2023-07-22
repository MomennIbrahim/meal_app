import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import '../../../../../constance.dart';
import '../../../../../core/utils/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, this.text1, this.text2});

  final String? text1;
  final String? text2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(
              Icons.keyboard_arrow_left,
              size: 30,
            )),
        Text(
          text1!,
          style: Styles.textStyle25,
        ),
        Text(
          text2!,
          style: Styles.textStyle25.copyWith(color: kPrimaryColor),
        ),
      ],
    );
  }
}
