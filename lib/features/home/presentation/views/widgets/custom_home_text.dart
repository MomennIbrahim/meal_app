import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomHomeText extends StatelessWidget {
  const CustomHomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 10.0),
      child: Row(
        children: [
          const Text(
            'Good ',
            style: Styles.textStyle30,
          ),
          Text(
            'morning!',
            style: Styles.textStyle30.copyWith(color: Colors.green),
          ),
        ],
      ),
    );
  }
}
