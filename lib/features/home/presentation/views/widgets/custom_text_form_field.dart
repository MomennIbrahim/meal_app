import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meals_app/constance.dart';

import '../../../../../core/utils/styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 60.0, right: 16.0, left: 16.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 3),
              spreadRadius: 7,
              blurRadius: 7,
            )
          ]
        ),
        child: TextFormField(
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              suffixIcon: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: kPrimaryColor,
                  size: 18.0,
                ),
              ),
              hintText: 'Search food or items plans',
              hintStyle: Styles.textStyle16.copyWith(color: Colors.grey),
              focusedBorder: outLineInputBorder(),
              enabledBorder: outLineInputBorder()),
        ),
      ),
    );
  }

  outLineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
        borderSide: const BorderSide(color: Colors.transparent));
  }
}
