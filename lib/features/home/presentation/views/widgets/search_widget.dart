import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:meals_app/core/utils/app_router.dart';

import '../../../../../core/utils/styles.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 70.0,right: 16.0,left: 16.0),
      child: GestureDetector(
        onTap: (){
          GoRouter.of(context).push(AppRouter.kSearchView);
        },
        child: Container(
          width: double.infinity,
          height: 60.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40.0),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 3),
                    color: Colors.grey[200]!,
                    spreadRadius: 5,
                    blurRadius: 5)
              ]
          ),
          child: const Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Search food or items...',style: Styles.textStyle16,),
                CircleAvatar(
                    backgroundColor: Color(0xff0e9c22),
                    child: Icon(
                      FontAwesomeIcons.magnifyingGlass,
                      color: Colors.white,
                      size: 18.0,
                    )),
              ],
            ),
          ),

        ),
      ),
    );
  }
}