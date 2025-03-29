import 'package:demo_flutter/domain/usecases/follow_channel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc/bloc.dart';
import '../../domain/usecases/get_all_channel.dart';
import 'all_channel_event.dart';
import 'all_channel_state.dart';

class AllChannelBloc extends Bloc<ChannelEvent, AllChannelState> {
  final GetAllChannel getAllChannel;

  final FollowChannel followChannel;

  AllChannelBloc({
    required this.getAllChannel,
    required this.followChannel,
  }) : super(ChannelInitial()) {
    on<GetAllChannelEvent>(_onGetAllChannels);
    on<FollowChannelEvent>(_onFollowChannel);
  }


  Future<void> _onGetAllChannels(
      GetAllChannelEvent event, Emitter<AllChannelState> emit) async {
    try {
      emit(ChannelLoading());
      final channels = await getAllChannel();
      emit(ChannelLoaded(channels));
    } catch (e) {
      emit(ChannelError('Failed to load channels: $e'));
    }
  }

  Future<void> _onFollowChannel(
      FollowChannelEvent event, Emitter<AllChannelState> emit) async {
    if (state is ChannelLoaded) {
      try {
        final result = await followChannel(event.channelId);
        emit(FollowSuccess(result));
        print("khanhpq 999999");
      } catch (e) {
        print("khanhpq "+e.toString());
        emit(ChannelError('Error: $e'));
      }
    }
  }

}



