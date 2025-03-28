import 'package:demo_flutter/domain/entities/channel.dart';
import 'package:demo_flutter/domain/entities/livestream.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'all_channel_bloc.dart';
import 'all_channel_event.dart';

class ItemChannel extends StatelessWidget {
  final Channel channel;

  // final VoidCallback onFollowToggle;

  const ItemChannel({
    super.key,
    required this.channel,
    // required this.onFollowToggle,
  });

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Container clicked!");
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8.0),
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(channel.imageUrl),
                  radius: 24.0,
                ),
                SizedBox(width: 12.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      channel.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "${channel.numFollow} Follower • ${channel.numVideo} Videos",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                context.read<AllChannelBloc>().add(
                  FollowChannelEvent(
                    channelId: channel.id,
                    isFollow: channel.isFollow == 1,
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    channel.isFollow == 1 ? Colors.orange : Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Text(channel.isFollow == 1 ? "Unfollow" : "+ Follow"),
            ),
          ],
        ),
      ),
    );
  }
}
