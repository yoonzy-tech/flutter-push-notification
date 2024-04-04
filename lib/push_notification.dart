import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotification {
  static final _firebaseMessaging = FirebaseMessaging.instance;

  // request notification permission
  static Future init() async {
    await _firebaseMessaging.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    // get the device fcm token
    final token = await _firebaseMessaging.getToken();
    print("FCM device token: $token");
    final apnstoken = await _firebaseMessaging.getAPNSToken();
    print("APNS device token: $apnstoken");
  }
}
