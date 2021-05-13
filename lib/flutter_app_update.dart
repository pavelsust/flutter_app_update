
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterAppUpdate {
  static const MethodChannel _channel = const MethodChannel('flutter_app_update');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  // static Future<bool> get isAppUpdate async {
  //   var version = await _channel.invokeMethod('checkUpdate');
  //   print("version check $version");
  //   return version;
  // }

static Future<Map<String, dynamic>> get isAppUpdate async {
  final Map<String, dynamic> response = await _channel.invokeMapMethod<String, dynamic>('checkUpdate');
  return response;
}

}
