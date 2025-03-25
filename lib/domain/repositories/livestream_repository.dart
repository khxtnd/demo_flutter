import '../entities/livestream.dart';


abstract class LivestreamRepository {
  Future<List<Livestream>> getAllLivestream();
}
