import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/channel.dart';

part 'channel_dto.g.dart';

@JsonSerializable()
class ChannelDto {
  @JsonKey(fromJson: _parseToString)
  final String id;

  @JsonKey(fromJson: _parseToString)
  final String msisdn;

  @JsonKey(name: "channelName")
  final String name;

  @JsonKey(name: "channelAvatar")
  final String imageUrl;

  @JsonKey(defaultValue: "")
  final String description;

  @JsonKey(defaultValue: "")
  final String imageCoverUrl;

  @JsonKey(defaultValue: 0)
  final int numFollow;
  @JsonKey(defaultValue: 0)
  final int numVideo;
  @JsonKey(defaultValue: 0)
  final int isOfficial;
  @JsonKey(defaultValue: 0)
  final int isFollow;
  @JsonKey(defaultValue: 0)
  final int isMyChannel;
  @JsonKey(defaultValue: "")
  final String url;
  @JsonKey(defaultValue: "")
  final String state;
  @JsonKey(defaultValue: false)
  final bool statusLive;
  @JsonKey(defaultValue: false)
  final bool owner;

  ChannelDto({
    required this.id,
    required this.msisdn,
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

  factory ChannelDto.fromJson(Map<String, dynamic> json) =>
      _$ChannelDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelDtoToJson(this);

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
