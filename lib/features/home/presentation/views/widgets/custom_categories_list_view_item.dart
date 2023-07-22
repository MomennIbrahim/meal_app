import 'package:flutter/material.dart';
import '../../../../../constance.dart';
import '../../../../../core/utils/styles.dart';

class CustomCategoriesItem extends StatelessWidget {
  const CustomCategoriesItem({super.key, required this.text, required this.imageUrl, required this.onTap});

  final String text;
  final String imageUrl;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 3),
                  color: Colors.grey[200]!,
                  spreadRadius: 4,
                  blurRadius: 4,)
            ]),
        child: Column(
          children: [
             GestureDetector(
               onTap: (){
                 onTap();
               },
               child: Padding(
                 padding: const EdgeInsets.all(4.0),
                 child: CircleAvatar(
                   backgroundColor: Colors.green[200],
                  radius: 35.0,
                  backgroundImage: NetworkImage(
                      imageUrl),
            ),
               ),
             ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                text,
                style: Styles.textStyle16.copyWith(
                  fontWeight: FontWeight.w900,
                  fontFamily: kNotoSerif,
                ),
              ),
            ),
            const SizedBox(height: 2.5,),
          ],
        ),
      ),
    );
  }
}
