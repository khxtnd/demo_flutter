import 'dart:io';

import 'package:demo_flutter/presentation/all_channel_page/all_channel_bloc.dart';
import 'package:demo_flutter/presentation/all_channel_page/all_channel_event.dart';
import 'package:demo_flutter/presentation/all_channel_page/all_channel_page.dart';
import 'package:demo_flutter/presentation/all_livestream_page/all_livestream_page.dart';
import 'package:demo_flutter/presentation/all_livestream_page/livestream_bloc.dart';
import 'package:demo_flutter/presentation/all_livestream_page/livestream_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/di/injection.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}

void main() {
  HttpOverrides.global = MyHttpOverrides();
  init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Livestream App',
      // home: BlocProvider(
      //   create: (context) => getIt<AllLivestreamBloc>()..add(GetAllLivestreamEvent()),  // Thêm sự kiện GetLivestreamEvent
      //   child: AllLivestreamPage(),
      // ),

      home: BlocProvider(
        create: (context) => getIt<AllChannelBloc>()..add(GetAllChannelEvent()),  // Thêm sự kiện GetLivestreamEvent
        child: AllChannelPage(),
      ),
    );
  }

}




