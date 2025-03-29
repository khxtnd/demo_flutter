import 'package:demo_flutter/domain/entities/channel.dart';
import 'package:demo_flutter/domain/entities/livestream.dart';


abstract class AllChannelState {}

class ChannelInitial extends AllChannelState {}

class ChannelLoading extends AllChannelState {}

class ChannelLoaded extends AllChannelState {
  final List<Channel> channels;

  ChannelLoaded(this.channels);
}

class ChannelError extends AllChannelState {
  final String message;

  ChannelError(this.message);
}

class FollowSuccess extends AllChannelState {
  final bool updatedChannels;

  FollowSuccess(this.updatedChannels);
}