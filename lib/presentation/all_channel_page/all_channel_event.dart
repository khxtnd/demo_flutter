abstract class ChannelEvent {}

class GetAllChannelEvent extends ChannelEvent {}

class FollowChannelEvent extends ChannelEvent {
  final String channelId;
  final bool isFollow;

  FollowChannelEvent({required this.channelId, required this.isFollow});
}