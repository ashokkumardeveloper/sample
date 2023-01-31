// import 'dart:developer';

// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:get/get.dart';

// class NotificationController extends GetxController {
//   final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//       FlutterLocalNotificationsPlugin();
//   AndroidInitializationSettings androidInitializationSettings =
//       const AndroidInitializationSettings("logo");
//   initialiseNotification() async {
//     InitializationSettings initializationSettings =
//         InitializationSettings(android: androidInitializationSettings);
//     await flutterLocalNotificationsPlugin.initialize(initializationSettings);
//   }

//   sendNotification(String title, String body) async {
//     NotificationDetails notificationDetails = const NotificationDetails(
//         android: AndroidNotificationDetails("0", "sample",
//             importance: Importance.max,
//             playSound: true,
//             priority: Priority.high));

//     await flutterLocalNotificationsPlugin
//         .show(0, title, body, notificationDetails, payload: "hiii");
//   }

//   @override
//   void onInit() {
//     initialiseNotification();
//     super.onInit();
//   }
// }
