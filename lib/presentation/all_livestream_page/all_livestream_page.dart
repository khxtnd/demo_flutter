import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'livestream_bloc.dart';
import 'livestream_state.dart';
import 'item_livestream.dart';

class AllLivestreamPage extends StatelessWidget {
  const AllLivestreamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Livestreams')),
      body: BlocBuilder<AllLivestreamBloc, LivestreamState>(
        builder: (context, state) {
          if (state is LivestreamLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is LivestreamLoaded) {
            return ListView.builder(
              itemCount: state.livestreams.length,
              itemBuilder: (context, index) {
                final livestream = state.livestreams[index];
                return ItemLivestream(livestream: livestream);
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
