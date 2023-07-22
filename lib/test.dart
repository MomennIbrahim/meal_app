// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:meals_app/app_cubit.dart';
// import '../../../../../core/utils/styles.dart';
//
// class BreakfastHomeMealTest extends StatelessWidget {
//   const BreakfastHomeMealTest({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<AppCubit, AppState>(
//       builder: (context, state) {
//         if(state is SuccessState) {
//           return Row(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(20.0),
//                 child: const SizedBox(
//                   height: 160.0,
//                   width: 110.0,
//                   child: Image(
//                       fit: BoxFit.cover,
//                       image: NetworkImage(
//                           'https://www.themealdb.com/images/media/meals/1550441882.jpg')),
//                 ),
//               ),
//               const SizedBox(
//                 width: 15.0,
//               ),
//               const Expanded(
//                   child: Text(
//                     'Fruit and Cream Cheese Breakfast Pastries',
//                     style: Styles.textStyle25,
//                     maxLines: 2,
//                     overflow: TextOverflow.ellipsis,
//                   )),
//             ],
//           );
//         }else if(state is FailureState)
//         {
//           return const Center(child: Text('error',style: Styles.textStyle30,),);
//         }else{
//           return const Center(child: CircularProgressIndicator(),);
//         }
//       },
//     );
//   }
// }