
import '../../domain/entities/livestream.dart';
import '../../domain/repositories/livestream_repository.dart';
import '../datasources/remote/livestream_remote_datasource.dart';

class LivestreamRepositoryImpl implements LivestreamRepository {
  final LivestreamRemoteDataSource remoteDataSource;

  LivestreamRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<Livestream>> getAllLivestream() async {
    try {
      final livestreamModels = await remoteDataSource.getAllLivestream();
      return livestreamModels.map((livestreamModel) => livestreamModel.toEntity()).toList();
    } catch (e) {
      throw Exception('Failed to load livestreams: $e');
    }
  }
}

