import 'package:demo_flutter/presentation/blocs/livestream_bloc.dart';
import 'package:demo_flutter/presentation/blocs/livestream_event.dart';
import 'package:demo_flutter/presentation/blocs/livestream_state.dart';
import 'package:demo_flutter/presentation/screens/livestream_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/di/injection.dart';


void main() {
  init();  // Đảm bảo gọi init() trước khi chạy ứng dụng
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Livestream App',
      home: BlocProvider(
        create: (context) => getIt<LivestreamBloc>()..add(GetLivestreamEvent()),  // Thêm sự kiện GetLivestreamEvent
        child: LivestreamScreen(),
      ),
    );
  }
}

class LivestreamScreen extends StatelessWidget {
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
            return Center(child: Text('No Livestreams available.'));
          }
        },
      ),
    );
  }
}



