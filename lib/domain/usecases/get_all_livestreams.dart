import 'package:demo_flutter/domain/entities/channel.dart';
import 'package:demo_flutter/domain/entities/livestream.dart';
import 'package:demo_flutter/domain/repositories/channel_repository.dart';
import 'package:demo_flutter/domain/repositories/livestream_repository.dart';


class GetAllLivestream {
  final LivestreamRepository repository;

  GetAllLivestream(this.repository);

  Future<List<Livestream>> call() async {
    return await repository.getAllLivestream();
  }
}

