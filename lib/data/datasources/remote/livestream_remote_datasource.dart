import 'package:dio/dio.dart';

import '../../../core/network/dio_client.dart';
import '../../models/livestream_model.dart';


import 'package:dio/dio.dart';


abstract class LivestreamRemoteDataSource {
  Future<List<LivestreamModel>> getAllLivestream();
}

class LivestreamRemoteDataSourceImpl implements LivestreamRemoteDataSource {
  final Dio dio;

  LivestreamRemoteDataSourceImpl({required DioClient dioClient})
      : dio = dioClient.client;

  @override
  Future<List<LivestreamModel>> getAllLivestream() async {
    try {
      final response = await dio.get(
        '/LivestreamAPI/v2/my_livestream/all',
        queryParameters: {
          "userId": "0902448362",
          "featureId": 5,
          "page": 0,
          "size": 10,
        },
        options: Options(
          headers: {
            "Accept-language": "en",
            "Content-Type": "application/json",
          },
        ),
      );
      return (response.data as List)
          .map((livestream) => LivestreamModel.fromJson(livestream))
          .toList();
    } catch (e) {
      throw Exception('Failed to load livestreams: $e');
    }
  }

}

