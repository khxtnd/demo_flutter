class Channel {
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

  Channel({
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
}
