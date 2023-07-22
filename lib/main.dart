import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meals_app/core/utils/app_router.dart';
import 'package:meals_app/core/utils/styles.dart';
import 'package:meals_app/features/home/data/repo/home_repo_implementation.dart';
import 'package:meals_app/features/home/presentation/controllers/breakfast_cubit/home_breakfast_cubit.dart';
import 'constance.dart';
import 'core/utils/bloc_observe.dart';
import 'core/utils/service_locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));

  Bloc.observer = MyBlocObserver();
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return HomeBreakfastCubit(getIt.get<HomeRepoImplementation>())
          ..getBreakfastMeals();
      },
      child: MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: kPrimaryColor,
            primaryColorLight: kPrimaryColor,
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              titleTextStyle: Styles.textStyle25,
              iconTheme: IconThemeData(
                color: Colors.black,
              )
            )
          )),
    );
  }
}
