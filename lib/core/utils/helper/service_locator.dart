import 'package:bookly/features/Home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'api_helper.dart';

final gitItServiceLocator = GetIt.instance; // create instance of GitIt

void setupServiceLocator() {
  // create HomeRepoImpl Singleton object.
  gitItServiceLocator.registerSingleton<HomeRepoImpl>(
      HomeRepoImpl(gitItServiceLocator.get<ApiHelper>()));

  // create ApiHelper Singleton object.
  gitItServiceLocator.registerSingleton<ApiHelper>(ApiHelper(Dio()));
}
