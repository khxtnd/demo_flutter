import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/livestream_model.dart';
import '../../domain/entities/livestream.dart';
import '../../domain/usecases/get_livestreams.dart';

import 'package:bloc/bloc.dart';
import 'livestream_event.dart';
import 'livestream_state.dart';

class LivestreamBloc extends Bloc<LivestreamEvent, LivestreamState> {
  final GetAllLivestream getAllLivestream;

  LivestreamBloc({required this.getAllLivestream}) : super(LivestreamInitial()) {
    on<GetLivestreamEvent>((event, emit) async {
      try {
        emit(LivestreamLoading());
        final livestreams = await getAllLivestream();
        emit(LivestreamLoaded(livestreams));
      } catch (e) {
        emit(LivestreamError('Failed to load livestreams: $e'));
      }
    });
  }
}



