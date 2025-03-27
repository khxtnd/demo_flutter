import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc/bloc.dart';
import '../../domain/usecases/get_all_channel.dart';
import 'all_channel_event.dart';
import 'all_channel_state.dart';

class AllChannelBloc extends Bloc<ChannelEvent, AllChannelState> {
  final GetAllChannel getAllChannel;

  AllChannelBloc({required this.getAllChannel}) : super(ChannelInitial()) {
    on<GetAllChannelEvent>((event, emit) async {
      try {
        emit(ChannelLoading());
        final channels = await getAllChannel();
        emit(ChannelLoaded(channels));
      } catch (e) {
        emit(ChannelError('Failed to load channels: $e'));
      }
    });
  }
}



