import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:push_notifications/app/app.dart';
import 'package:push_notifications/firebase_options.dart';

import 'services/local_notifications_service.dart';
import 'services/push_notifications_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await Future.wait([
    PushNotificationsService.init(),//2
    LocalNotificationService.init(),//3
  ]);
  // await PushNotificationsService.init(); //2
  // await LocalNotificationService.init(); //3
  runApp(const PushNotifications());
}
