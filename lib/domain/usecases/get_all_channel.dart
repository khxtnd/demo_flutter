import 'package:demo_flutter/domain/entities/channel.dart';
import 'package:demo_flutter/domain/repositories/channel_repository.dart';


class GetAllChannel {
  final ChannelRepository repository;

  GetAllChannel(this.repository);

  Future<List<Channel>> call() async {
    return await repository.getAllChannel();
  }
}

