import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/livestream_bloc.dart';
import '../blocs/livestream_state.dart';

class LivestreamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Livestreams')),
      body: BlocBuilder<LivestreamBloc, LivestreamState>(
        builder: (context, state) {
          if (state is LivestreamLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is LivestreamLoaded) {
            return ListView.builder(
              itemCount: state.livestreams.length,
              itemBuilder: (context, index) {
                final livestream = state.livestreams[index];
                return ListTile(
                  title: Text(livestream.title),
                  subtitle: Text(livestream.description),
                );
              },
            );
          } else if (state is LivestreamError) {
            return Center(child: Text('Error: ${state.message}'));
          } else {
            return Center(child: Text('No data available'));
          }
        },
      ),
    );
  }
}
