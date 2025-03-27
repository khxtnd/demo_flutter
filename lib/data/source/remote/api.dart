import 'package:demo_flutter/data/dto/channel_dto.dart';
import 'package:demo_flutter/data/dto/livestream_dto.dart';
import 'package:demo_flutter/core/network/response_base.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart';

import '../../../core/network/dio_client.dart';


abstract class Api {
  Future<List<ChannelDto>> getAllChannel();
  Future<List<LivestreamDto>> getAllLivestream();
}

class ApiImpl implements Api {
  final Dio dio;

  ApiImpl({required DioClient dioClient})
      : dio = dioClient.client;

  @override
  Future<List<LivestreamDto>> getAllLivestream() async {
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

      final responseData = ResponseBase<List<LivestreamDto>>.fromJson(
        response.data,
            (json) => (json as List<dynamic>)
            .map((e) => LivestreamDto.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

      return responseData.data;

    } catch (e) {
      throw Exception('Failed to load livestreams: $e');
    }
  }

  @override
  Future<List<ChannelDto>> getAllChannel() async {
    try {
      final response = await dio.get(
        '/LivestreamAPI/v1/channel/list/v2',
        queryParameters: {
          "userId": "0902448362",
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

      final responseData = ResponseBase<List<ChannelDto>>.fromJson(
        response.data,
            (json) => (json as List<dynamic>)
            .map((e) => ChannelDto.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

      return responseData.data;

    } catch (e) {
      throw Exception('Failed to load channel: $e');
    }
  }

}

