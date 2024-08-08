import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' hide DeviceType;

import '../types/device_type.dart';
import 'theme_config.dart';

class ResolutionConfig {
  static ResolutionConfig? _instance;

  static ResolutionConfig get instance {
    _instance ??= ResolutionConfig._();
    return _instance!;
  }

  ResolutionConfig._();

  static const double maxMobileWidth = 767;
  static const double minTabletWidth = 768;
  static const double maxTableWidth = 1023;
  static const double minDesktopWidth = 1024;

  Size getDesignSize(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    if (size.width <= maxMobileWidth) {
      return const Size(430, 932);
    }

    if (size.width >= minTabletWidth && size.width <= maxTableWidth) {
      return const Size(1024, 1366);
    }

    if (size.width >= minDesktopWidth) {
      return const Size(1920, 1080);
    }
    return const Size(1920, 1080);
  }

  void config(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    if (size.width <= maxMobileWidth) {
      if (ThemeConfig.type != DeviceType.mobile) {
        ScreenUtil.configure(designSize: const Size(430, 932));
        ThemeConfig.type = DeviceType.mobile;
      }
    }

    if (size.width >= minTabletWidth && size.width <= maxTableWidth) {
      if (ThemeConfig.type != DeviceType.tablet) {
        ScreenUtil.configure(designSize: const Size(1024, 1366));
        ThemeConfig.type = DeviceType.tablet;
      }
    }

    if (size.width >= minDesktopWidth) {
      if (ThemeConfig.type != DeviceType.desktop) {
        ScreenUtil.configure(designSize: const Size(1920, 1080));
        ThemeConfig.type = DeviceType.desktop;
      }
    }
  }
}
