import 'package:flutter/material.dart';
import 'dart:ui' as ui show window;

import 'package:flutter/services.dart';

class ScreenUtils{
  static double get width{
    MediaQueryData mediaQuery = MediaQueryData.fromWindow(ui.window);
    return mediaQuery.size.width;
  }

  static double get height{
    MediaQueryData mediaQuery = MediaQueryData.fromWindow(ui.window);
    return mediaQuery.size.height;
  }

  static double get scale{
    MediaQueryData mediaQueryData = MediaQueryData.fromWindow(ui.window);
    return mediaQueryData.devicePixelRatio;
  }

  static double get textScaleFactor{
    MediaQueryData mediaQueryData = MediaQueryData.fromWindow(ui.window);
    return mediaQueryData.textScaleFactor;
  }

  static double get navigationBarHeight{
    MediaQueryData mediaQueryData = MediaQueryData.fromWindow(ui.window);
    return mediaQueryData.padding.top + kToolbarHeight;
  }

  static double get topSafeHeight {
    MediaQueryData mediaQuery = MediaQueryData.fromWindow(ui.window);
    return mediaQuery.padding.top;
  }

  static double get bottomSafeHeight {
    MediaQueryData mediaQuery = MediaQueryData.fromWindow(ui.window);
    return mediaQuery.padding.bottom;
  }

  static updateStatusBarStyle(SystemUiOverlayStyle style){
    SystemChrome.setSystemUIOverlayStyle(style);
  }
}
