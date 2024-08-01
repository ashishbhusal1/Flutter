import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Profile extends StatelessWidget {
  final String name;
  Profile({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Profile $name')),
        body: Center(
            child: ElevatedButton(
          child: const Text('Dashboard'),
          onPressed: () {
            // GoRouter.of(context).go('/');
            context.go('/');
          },
        )));
  }
}
