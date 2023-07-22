import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomLoadingWidget extends StatelessWidget {
  const CustomLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50),
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.green.withOpacity(.1),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 10,
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          width: double.infinity,
                          height: 10,
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          itemCount: 5,
        ),
      ),
    );
  }
}
