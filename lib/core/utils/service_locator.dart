// ignore: depend_on_referenced_packages
import 'package:bookly_clean_arch/features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly_clean_arch/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly_clean_arch/features/home/data/repo/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../networking/api_service.dart';

final getIt = GetIt.instance;
void serviceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(dio: Dio()));
  getIt.registerLazySingleton<HomeRepoImpl>(
    () => HomeRepoImpl(
      homeLocalDataSourceImpl: HomeLocalDataSourceImpl(),
      homeRemoteDataSourceImpl: HomeRemoteDataSourceImpl(
        apiService: getIt.get<ApiService>(),
      ),
    ),
  );
}
