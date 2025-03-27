import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'all_channel_bloc.dart';
import 'all_channel_state.dart';
import 'item_channel.dart';

class AllChannelPage extends StatelessWidget {
  const AllChannelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Channel')),
      body: BlocBuilder<AllChannelBloc, AllChannelState>(
        builder: (context, state) {
          if (state is ChannelLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is ChannelLoaded) {
            return ListView.builder(
              itemCount: state.channels.length,
              itemBuilder: (context, index) {
                final channels = state.channels[index];
                return ItemChannel(channel: channels);
              },
            );
          } else if (state is ChannelError) {
            return Center(child: Text('Error: ${state.message}'));
          } else {
            return Center(child: Text('No data available'));
          }
        },
      ),
    );
  }
}
