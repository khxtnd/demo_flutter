import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/channel.dart';

part 'channel_model.g.dart';

@JsonSerializable()
class ChannelModel {
  final String id;
  final String name;
  final String imageUrl;
  final String description;
  final String imageCoverUrl;
  final int numFollow;
  final int numVideo;
  final int isOfficial;
  final int isFollow;
  final int isMyChannel;
  final String url;
  final String state;
  final bool statusLive;
  final bool owner;

  ChannelModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.imageCoverUrl,
    required this.numFollow,
    required this.numVideo,
    required this.isOfficial,
    required this.isFollow,
    required this.isMyChannel,
    required this.url,
    required this.state,
    required this.statusLive,
    required this.owner,
  });

  factory ChannelModel.fromJson(Map<String, dynamic> json) => _$ChannelModelFromJson(json);
  Map<String, dynamic> toJson() => _$ChannelModelToJson(this);

  Channel toEntity() => Channel(
    id: id,
    name: name,
    imageUrl: imageUrl,
    description: description,
    imageCoverUrl: imageCoverUrl,
    numFollow: numFollow,
    numVideo: numVideo,
    isOfficial: isOfficial,
    isFollow: isFollow,
    isMyChannel: isMyChannel,
    url: url,
    state: state,
    statusLive: statusLive,
    owner: owner,
  );
}
