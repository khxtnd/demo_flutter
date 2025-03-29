import 'package:demo_flutter/domain/entities/channel.dart';



abstract class ChannelRepository {
  Future<List<Channel>> getAllChannel();
  Future<bool> followChannel(String channelId);
}
