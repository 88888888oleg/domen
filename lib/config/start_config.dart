import 'dart:async';
import 'dart:ui';

import 'package:domen/config/app_color.dart';
import 'package:flutter/material.dart';

class StartConfig {
  static Future<void> configureApp() async {
    WidgetsFlutterBinding.ensureInitialized();
    _configureDispatcher();
  }
}

_configureDispatcher() {
  final dispatcher = WidgetsBinding.instance.platformDispatcher;
  _configureBrightness(dispatcher: dispatcher);
  dispatcher.onPlatformBrightnessChanged = () {
    _configureBrightness(dispatcher: dispatcher);
  };
}

_configureBrightness({required PlatformDispatcher dispatcher}) {
  Palette().brightness = dispatcher.platformBrightness;
}
