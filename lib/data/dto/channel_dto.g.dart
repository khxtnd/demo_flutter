// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelDto _$ChannelDtoFromJson(Map<String, dynamic> json) => ChannelDto(
  id: ChannelDto._parseToString(json['id']),
  msisdn: ChannelDto._parseToString(json['msisdn']),
  name: json['channelName'] as String,
  imageUrl: json['channelAvatar'] as String,
  description: json['description'] as String? ?? '',
  imageCoverUrl: json['imageCoverUrl'] as String? ?? '',
  numFollows: (json['numFollows'] as num?)?.toInt() ?? 0,
  numVideos: (json['numVideos'] as num?)?.toInt() ?? 0,
  isOfficial: (json['isOfficial'] as num?)?.toInt() ?? 0,
  isFollow: (json['isFollow'] as num?)?.toInt() ?? 0,
  isMyChannel: (json['isMyChannel'] as num?)?.toInt() ?? 0,
  url: json['url'] as String? ?? '',
  state: json['state'] as String? ?? '',
  statusLive: json['statusLive'] as bool? ?? false,
  owner: json['owner'] as bool? ?? false,
);

Map<String, dynamic> _$ChannelDtoToJson(ChannelDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'msisdn': instance.msisdn,
      'channelName': instance.name,
      'channelAvatar': instance.imageUrl,
      'description': instance.description,
      'imageCoverUrl': instance.imageCoverUrl,
      'numFollows': instance.numFollows,
      'numVideos': instance.numVideos,
      'isOfficial': instance.isOfficial,
      'isFollow': instance.isFollow,
      'isMyChannel': instance.isMyChannel,
      'url': instance.url,
      'state': instance.state,
      'statusLive': instance.statusLive,
      'owner': instance.owner,
    };
