import 'dart:io';

import 'package:demo_flutter/core/utils/login_to_xmpp.dart';
import 'package:demo_flutter/presentation/all_channel_page/all_channel_bloc.dart';
import 'package:demo_flutter/presentation/all_channel_page/all_channel_event.dart';
import 'package:demo_flutter/presentation/all_channel_page/all_channel_page.dart';
import 'package:demo_flutter/presentation/all_livestream_page/all_livestream_page.dart';
import 'package:demo_flutter/presentation/all_livestream_page/livestream_bloc.dart';
import 'package:demo_flutter/presentation/all_livestream_page/livestream_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

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
  loginToXmpp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<AllLivestreamBloc>()..add(GetAllLivestreamEvent())),
        BlocProvider(create: (context) => getIt<AllChannelBloc>()..add(GetAllChannelEvent())),
      ],
      child: MaterialApp.router(
        title: 'Livestream App',
        routerConfig: _router,
      ),
    );
  }

  final GoRouter _router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => AllLivestreamPage(),
      ),
      GoRoute(
        path: '/channel',
        builder: (context, state) => AllChannelPage(),
      ),
    ],
  );
}




