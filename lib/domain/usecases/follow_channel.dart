import 'package:demo_flutter/domain/entities/channel.dart';
import 'package:demo_flutter/domain/repositories/channel_repository.dart';


class FollowChannel {
  final ChannelRepository repository;

  FollowChannel(this.repository);

  Future<bool> call(String channelId) async {
    return await repository.followChannel(channelId);
  }
}

