import '../entities/livestream.dart';
import '../repositories/livestream_repository.dart';

class GetAllLivestream {
  final LivestreamRepository repository;

  GetAllLivestream(this.repository);

  Future<List<Livestream>> call() async {
    return await repository.getAllLivestream();
  }
}

