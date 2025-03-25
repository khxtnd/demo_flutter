import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import '../../data/datasources/remote/livestream_remote_datasource.dart';
import '../../data/repositories/livestream_repository_impl.dart';
import '../../domain/repositories/livestream_repository.dart';
import '../../domain/usecases/get_livestreams.dart';
import '../../presentation/blocs/livestream_bloc.dart';

import 'package:get_it/get_it.dart';

import '../network/dio_client.dart';


final getIt = GetIt.instance;

void init() {
  // Register DioClient
  getIt.registerLazySingleton<DioClient>(() => DioClient());

  // Data
  getIt.registerLazySingleton<LivestreamRemoteDataSource>(() => LivestreamRemoteDataSourceImpl(
    dioClient: getIt(),
  ));

  getIt.registerLazySingleton<LivestreamRepository>(() => LivestreamRepositoryImpl(
    remoteDataSource: getIt(),
  ));

  // Domain
  getIt.registerLazySingleton(() => GetAllLivestream(getIt()));

  // Presentation
  getIt.registerFactory(() => LivestreamBloc(getAllLivestream: getIt()));
}

