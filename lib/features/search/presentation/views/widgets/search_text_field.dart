import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:meals_app/constance.dart';
import 'package:meals_app/features/search/presentation/controller/search_cubit.dart';

import '../../../../../core/utils/styles.dart';

class SearchTextFormField extends StatelessWidget {
  const SearchTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            height: 55.0,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 7,
                        spreadRadius: 7,
                        offset: Offset(0, 3)
                    )
                  ]
              ),
              child: TextFormField(
                controller: searchController,
                onChanged: (value) {
                  BlocProvider.of<SearchCubit>(context).getSearch(
                      mealName: searchController.text);

                },
                decoration: InputDecoration(
                  prefixIcon: IconButton(
                    onPressed: () {
                      GoRouter.of(context).pop();
                      searchController.text = '';
                    },
                    icon: const Icon(
                      FontAwesomeIcons.arrowRotateLeft,
                      size: 20.0,
                    ),
                  ),
                  suffixIcon: const Icon(
                    FontAwesomeIcons.magnifyingGlass,
                    size: 18.0,
                    color: kPrimaryColor,
                  ),
                  filled: true,
                  fillColor: Colors.white12,
                  focusedBorder: outLineInputBorder(),
                  hintText: 'Search',
                  hintStyle: Styles.textStyle16,
                  enabledBorder: outLineInputBorder(),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  outLineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(22.5),
      borderSide: const BorderSide(
        color: Colors.transparent,
      ),
    );
  }
}
