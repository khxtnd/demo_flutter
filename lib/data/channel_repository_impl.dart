import 'package:demo_flutter/data/source/remote/api.dart';
import 'package:demo_flutter/domain/entities/channel.dart';
import 'package:demo_flutter/domain/repositories/channel_repository.dart';

import '../domain/entities/livestream.dart';
import '../domain/repositories/livestream_repository.dart';

class ChannelRepositoryImpl implements ChannelRepository {
  final Api _api;

  ChannelRepositoryImpl({required Api api}) : _api = api;

  @override
  Future<List<Channel>> getAllChannel() async {
    try {
      final allChannel = await _api.getAllChannel();
      return allChannel.map((channel) => channel.toEntity()).toList();
    } catch (e) {
      throw Exception('Failed to load livestreams: $e');
    }
  }

  @override
  Future<bool> followChannel(String channelId) async {
    try {
      return await _api.followChannel(channelId);
    } catch (e) {
      throw Exception('Failed followChannel: $e');
    }
  }
}
