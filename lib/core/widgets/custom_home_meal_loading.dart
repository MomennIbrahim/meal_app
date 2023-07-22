import 'package:flutter/material.dart';

class CustomHomeMealLoading extends StatelessWidget {
  const CustomHomeMealLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.grey[300]
          ),
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 5,
            width: 110.0,
          ),
        ),
        const SizedBox(
          width: 15.0,
        ),
        Expanded(
            child: Column(
              children: [
                Container(
                  height: 10.0,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20.0),
                     color: Colors.grey[300]!,
                 ),
                ),
                const SizedBox(height: 15.0,),
                Padding(
                  padding: const EdgeInsets.only(right: 80.0),
                  child: Container(
                    height: 10.0,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20.0),
                       color: Colors.grey[300]!,
                   ),
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
