// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'livestream_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LivestreamModel _$LivestreamModelFromJson(Map<String, dynamic> json) =>
    LivestreamModel(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      status: (json['status'] as num).toInt(),
      privacy: (json['privacy'] as num).toInt(),
      hlsPlaylink: json['hlsPlaylink'] as String,
      linkAvatar: json['linkAvatar'] as String,
      totalView: (json['totalView'] as num).toInt(),
      totalLike: (json['totalLike'] as num).toInt(),
      totalComment: (json['totalComment'] as num).toInt(),
      totalShare: (json['totalShare'] as num).toInt(),
      timeStart: (json['timeStart'] as num).toInt(),
      channelId: json['channelId'] as String,
      channelName: json['channelName'] as String,
      follow: json['follow'] as bool,
      like: json['like'] as bool,
      videoId: json['videoId'] as String,
      type: (json['type'] as num).toInt(),
      isNotified: json['isNotified'] as bool,
      channel: ChannelModel.fromJson(json['channel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LivestreamModelToJson(LivestreamModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'status': instance.status,
      'privacy': instance.privacy,
      'hlsPlaylink': instance.hlsPlaylink,
      'linkAvatar': instance.linkAvatar,
      'totalView': instance.totalView,
      'totalLike': instance.totalLike,
      'totalComment': instance.totalComment,
      'totalShare': instance.totalShare,
      'timeStart': instance.timeStart,
      'channelId': instance.channelId,
      'channelName': instance.channelName,
      'follow': instance.follow,
      'like': instance.like,
      'videoId': instance.videoId,
      'type': instance.type,
      'isNotified': instance.isNotified,
      'channel': instance.channel,
    };
