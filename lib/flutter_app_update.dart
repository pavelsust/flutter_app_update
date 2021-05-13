
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterAppUpdate {
  static const MethodChannel _channel =
      const MethodChannel('flutter_app_update');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
