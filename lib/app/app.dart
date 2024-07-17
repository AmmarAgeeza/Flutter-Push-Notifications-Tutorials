import 'package:flutter/material.dart';

class PushNotifications extends StatelessWidget {
  const PushNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Push Notifications'),
        ),
      ),
    );
  }
}
