
import 'package:demo_flutter/data/source/remote/api.dart';

import '../domain/entities/livestream.dart';
import '../domain/repositories/livestream_repository.dart';

class LivestreamRepositoryImpl implements LivestreamRepository {
  final Api _api;

  LivestreamRepositoryImpl({required Api api}) : _api = api;

  @override
  Future<List<Livestream>> getAllLivestream() async {
    try {
      final livestreamModels = await _api.getAllLivestream();
      return livestreamModels.map((livestreamModel) => livestreamModel.toEntity()).toList();
    } catch (e) {
      throw Exception('Failed to load livestreams: $e');
    }
  }
}

