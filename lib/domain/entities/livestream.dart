import 'channel.dart';

class Livestream {
  final String id;
  final String title;
  final String description;
  final int status;
  final int privacy;
  final String hlsPlaylink;
  final String linkAvatar;
  final int totalView;
  final int totalLike;
  final int totalComment;
  final int totalShare;
  final int timeStart;
  final String channelId;
  final String channelName;
  final bool follow;
  final bool like;
  final String videoId;
  final int type;
  final bool isNotified;
  final Channel channel;

  Livestream({
    required this.id,
    required this.title,
    required this.description,
    required this.status,
    required this.privacy,
    required this.hlsPlaylink,
    required this.linkAvatar,
    required this.totalView,
    required this.totalLike,
    required this.totalComment,
    required this.totalShare,
    required this.timeStart,
    required this.channelId,
    required this.channelName,
    required this.follow,
    required this.like,
    required this.videoId,
    required this.type,
    required this.isNotified,
    required this.channel,
  });
}
