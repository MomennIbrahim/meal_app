// import 'package:bloc/bloc.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:meta/meta.dart';
// import 'features/home/data/model/data_model.dart';
// part 'app_state.dart';
//
//
// class AppCubit extends Cubit<AppState> {
//   AppCubit() : super(AppInitial());
//
//   get http => null;
//
//   static get(context) => BlocProvider.of(context);
//
//   DataModel? mealModel;
//
//   getData() {
//     emit(LoadingState());
//     Dio(BaseOptions(headers: {
//       'Authorization':'Token 9c8b06d329136da358c2d00e76946b0111ce2c48'
//     }))
//         .get('https://food2fork.ca/api/recipe/search/?page=2&query=breakfast')
//         .then((value) {
//           mealModel = DataModel.fromJson(value.data);
//           emit(SuccessState());
//     })
//         .catchError((e) {
//           print(e.toString());
//           emit(FailureState());
//     });
//   }
// }
