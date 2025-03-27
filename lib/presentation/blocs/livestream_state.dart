import 'package:demo_flutter/domain/entities/livestream.dart';


abstract class LivestreamState {}

class LivestreamInitial extends LivestreamState {}

class LivestreamLoading extends LivestreamState {}

class LivestreamLoaded extends LivestreamState {
  final List<Livestream> livestreams;

  LivestreamLoaded(this.livestreams);
}

class LivestreamError extends LivestreamState {
  final String message;

  LivestreamError(this.message);
}