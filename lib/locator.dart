// Package imports:
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

// Project imports:
import 'package:future_mind_task/features/home/data/repositories/items_repository.dart';
import 'package:future_mind_task/features/home/data/repositories/items_repository_impl.dart';

import 'features/home/application/cubit/home_cubit.dart';
import 'features/home/data/data_sources/remote_data_source.dart';
import 'features/home/data/data_sources/remote_data_source_impl.dart';

// Project imports:

final sl = GetIt.instance;

void initializeServiceLocator() {
  sl.registerLazySingleton<Dio>(() => Dio());

  sl.registerLazySingleton<RemoteDataSource>(() => RemoteDataSourceImpl(sl()));
  sl.registerLazySingleton<ItemsRepository>(() => ItemsRepositoryImpl(sl()));

  sl.registerFactory<HomeCubit>(() => HomeCubit(sl()));
}
