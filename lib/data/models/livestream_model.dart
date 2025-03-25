import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/livestream.dart';
import 'channel_model.dart';

part 'livestream_model.g.dart';

@JsonSerializable()
class LivestreamModel {
  @JsonKey(fromJson: _parseToString)
  final String id;
  @JsonKey(fromJson: _parseToString)
  final String title;
  @JsonKey(fromJson: _parseToString)
  final String description;
  final int status;
  final int privacy;
  @JsonKey(fromJson: _parseToString)
  final String hlsPlaylink;
  @JsonKey(fromJson: _parseToString)
  final String linkAvatar;
  final int totalView;
  final int totalLike;
  final int totalComment;
  final int totalShare;
  final int timeStart;
  @JsonKey(fromJson: _parseToString)
  final String channelId;
  @JsonKey(fromJson: _parseToString)
  final String channelName;
  final bool follow;
  final bool like;
  @JsonKey(fromJson: _parseToString)
  final String videoId;
  final int type;
  final bool isNotified;
  final ChannelModel channel;

  LivestreamModel({
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

  factory LivestreamModel.fromJson(Map<String, dynamic> json) => _$LivestreamModelFromJson(json);
  Map<String, dynamic> toJson() => _$LivestreamModelToJson(this);

  Livestream toEntity() => Livestream(
    id: id,
    title: title,
    description: description,
    status: status,
    privacy: privacy,
    hlsPlaylink: hlsPlaylink,
    linkAvatar: linkAvatar,
    totalView: totalView,
    totalLike: totalLike,
    totalComment: totalComment,
    totalShare: totalShare,
    timeStart: timeStart,
    channelId: channelId,
    channelName: channelName,
    follow: follow,
    like: like,
    videoId: videoId,
    type: type,
    isNotified: isNotified,
    channel: channel.toEntity(),
  );

  static String _parseToString(dynamic value) {
    if (value == null) {
      return '';
    } else if (value is int || value is double) {
      return value.toString();
    } else {
      return value.toString();
    }
  }
}
