// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'livestream_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LivestreamDto _$LivestreamDtoFromJson(Map<String, dynamic> json) =>
    LivestreamDto(
      id: LivestreamDto._parseToString(json['id']),
      title: LivestreamDto._parseToString(json['title']),
      description: LivestreamDto._parseToString(json['description']),
      status: (json['status'] as num).toInt(),
      privacy: (json['privacy'] as num).toInt(),
      hlsPlaylink: LivestreamDto._parseToString(json['hlsPlaylink']),
      linkAvatar: LivestreamDto._parseToString(json['linkAvatar']),
      totalView: (json['totalView'] as num).toInt(),
      totalLike: (json['totalLike'] as num).toInt(),
      totalComment: (json['totalComment'] as num).toInt(),
      totalShare: (json['totalShare'] as num).toInt(),
      timeStart: (json['timeStart'] as num).toInt(),
      channelId: LivestreamDto._parseToString(json['channelId']),
      channelName: LivestreamDto._parseToString(json['channelName']),
      follow: json['follow'] as bool? ?? false,
      like: json['like'] as bool? ?? false,
      videoId: LivestreamDto._parseToString(json['videoId']),
      type: (json['type'] as num).toInt(),
      isNotified: json['isNotified'] as bool? ?? false,
    );

Map<String, dynamic> _$LivestreamDtoToJson(LivestreamDto instance) =>
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
    };
