import 'package:demo_flutter/data/channel_repository_impl.dart';
import 'package:demo_flutter/domain/repositories/channel_repository.dart';
import 'package:demo_flutter/domain/usecases/get_all_channel.dart';
import 'package:demo_flutter/presentation/all_channel_page/all_channel_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import '../../data/livestream_repository_impl.dart';
import '../../data/source/remote/api.dart';
import '../../domain/repositories/livestream_repository.dart';
import '../../domain/usecases/follow_channel.dart';
import '../../domain/usecases/get_all_livestreams.dart';

import 'package:get_it/get_it.dart';

import '../../presentation/all_livestream_page/livestream_bloc.dart';
import '../network/dio_client.dart';


final getIt = GetIt.instance;

void init() {
  // Register DioClient
  getIt.registerLazySingleton<DioClient>(() => DioClient());

  // Data
  getIt.registerLazySingleton<Api>(() => ApiImpl(
    dioClient: getIt<DioClient>(),
  ));

  getIt.registerLazySingleton<LivestreamRepository>(() => LivestreamRepositoryImpl(
    api: getIt<Api>(),
  ));

  getIt.registerLazySingleton<ChannelRepository>(() => ChannelRepositoryImpl(
    api: getIt<Api>(),
  ));

  // Domain
  getIt.registerLazySingleton(() => GetAllLivestream(getIt<LivestreamRepository>()));
  getIt.registerLazySingleton(() => GetAllChannel(getIt<ChannelRepository>()));
  getIt.registerLazySingleton(() => FollowChannel(getIt<ChannelRepository>()));


  // Presentation
  getIt.registerFactory(() => AllLivestreamBloc(getAllLivestream: getIt()));
  getIt.registerFactory(() => AllChannelBloc(getAllChannel: getIt<GetAllChannel>(),followChannel: getIt<FollowChannel>()));

}

