library hello;

import 'dart:async';

import 'package:flutter/services.dart';

class BatteryLevel {
  static const MethodChannel _channel =
      const MethodChannel('samples.flutter.dev/battery');
  static Future<int> get battery async {
    final int battery = await _channel.invokeMethod('getBatteryLevel');
    return battery;
  }
}
