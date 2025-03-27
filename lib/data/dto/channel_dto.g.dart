// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelDto _$ChannelDtoFromJson(Map<String, dynamic> json) => ChannelDto(
  id: json['id'] as String,
  name: json['name'] as String,
  imageUrl: json['imageUrl'] as String,
  description: json['description'] as String,
  imageCoverUrl: json['imageCoverUrl'] as String,
  numFollow: (json['numFollow'] as num).toInt(),
  numVideo: (json['numVideo'] as num).toInt(),
  isOfficial: (json['isOfficial'] as num).toInt(),
  isFollow: (json['isFollow'] as num).toInt(),
  isMyChannel: (json['isMyChannel'] as num).toInt(),
  url: json['url'] as String,
  state: json['state'] as String,
  statusLive: json['statusLive'] as bool? ?? false,
  owner: json['owner'] as bool? ?? false,
);

Map<String, dynamic> _$ChannelDtoToJson(ChannelDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'description': instance.description,
      'imageCoverUrl': instance.imageCoverUrl,
      'numFollow': instance.numFollow,
      'numVideo': instance.numVideo,
      'isOfficial': instance.isOfficial,
      'isFollow': instance.isFollow,
      'isMyChannel': instance.isMyChannel,
      'url': instance.url,
      'state': instance.state,
      'statusLive': instance.statusLive,
      'owner': instance.owner,
    };
