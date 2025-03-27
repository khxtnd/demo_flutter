import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc/bloc.dart';
import '../../domain/usecases/get_all_livestreams.dart';
import 'livestream_event.dart';
import 'livestream_state.dart';

class AllLivestreamBloc extends Bloc<LivestreamEvent, LivestreamState> {
  final GetAllLivestream getAllLivestream;

  AllLivestreamBloc({required this.getAllLivestream}) : super(LivestreamInitial()) {
    on<GetAllLivestreamEvent>((event, emit) async {
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



