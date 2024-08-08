import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' hide DeviceType;
import 'package:portfolio/infrastructure/configuration/resolution_config.dart';

import '../../infrastructure/configuration/theme_config.dart';
import '../../infrastructure/types/device_type.dart';

class ResponsivePageComponent extends StatefulWidget {

  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const ResponsivePageComponent(
      {super.key,
      required this.desktop,
      required this.mobile,
      required this.tablet});

  @override
  State<ResponsivePageComponent> createState() =>
      _ResponsivePageComponentState();
}

class _ResponsivePageComponentState extends State<ResponsivePageComponent> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= ResolutionConfig.maxMobileWidth) {
          if (ThemeConfig.type != DeviceType.mobile) {
            ScreenUtil.configure(designSize: const Size(430, 932));
            ThemeConfig.type = DeviceType.mobile;
          }
          return widget.mobile;
        }

        if (constraints.maxWidth >= ResolutionConfig.minTabletWidth &&
            constraints.maxWidth <= ResolutionConfig.maxTableWidth) {
          if (ThemeConfig.type != DeviceType.tablet) {
            ScreenUtil.configure(designSize: const Size(1024, 1366));
            ThemeConfig.type = DeviceType.tablet;
          }
          return widget.tablet;
        }

        if (constraints.maxWidth >= ResolutionConfig.maxMobileWidth) {
          if (ThemeConfig.type != DeviceType.desktop) {
            ScreenUtil.configure(designSize: const Size(1920, 1080));
            ThemeConfig.type = DeviceType.desktop;
          }
          return widget.desktop;
        }

        return widget.desktop;
      },
    );
  }
}
