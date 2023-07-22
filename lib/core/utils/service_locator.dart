import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:meals_app/features/home/data/repo/home_repo_implementation.dart';
import 'api_service.dart';

GetIt getIt = GetIt.instance;

void setupServiceLocator() {

  // dependency injection
  // mafhom singelton b create nos5a mn 7aga mo3aina w 23id ast5damha

  getIt.registerSingleton<ApiService>(ApiService(Dio()));

  getIt.registerSingleton<HomeRepoImplementation>(HomeRepoImplementation(
      getIt.get<ApiService>()
  ));
}