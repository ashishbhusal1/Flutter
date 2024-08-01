import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router/dashboard.dart';
import 'package:router/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Go Router Demo',
      routerConfig: _router,
    );
  }

  final GoRouter _router = GoRouter(
      // initialLocation: "/profile",
      // routes: [
      //   GoRoute(
      //       path: '/',
      //       builder: (context, state) => const Dashboard(),
      //       routes: [
      //         GoRoute(
      //             path: 'profile',
      //             builder: ((context, state) => const Profile())),
      //       ]),
      // ]);
      routes: [
        GoRoute(
            name: 'dashboard',
            path: '/',
            builder: (context, state) => const Dashboard()),
        GoRoute(
          name: '',
          path: '/profile/:name',
          builder: (context, state) {
            final name = state.pathParameters['name'] ?? 'Guest';
            return Profile(name: name);
          },
        ),
      ]);
}
