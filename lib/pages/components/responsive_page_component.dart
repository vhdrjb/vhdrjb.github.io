import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' hide DeviceType;

import '../../infrastructure/types/device_type.dart';

class ResponsivePageComponent extends StatefulWidget {
  static const double _maxMobileWidth = 767;
  static const double _minTabletWidth = 768;
  static const double _maxTableWidth = 1023;
  static const double _minDesktopWidth = 1024;
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
  late DeviceType? _type;

  @override
  void initState() {
    super.initState();
    _type = null;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= ResponsivePageComponent._maxMobileWidth) {
          if (_type != DeviceType.mobile) {
            ScreenUtil.configure(designSize: const Size(430, 932));
            _type = DeviceType.mobile;
          }
          return widget.mobile;
        }

        if (constraints.maxWidth >= ResponsivePageComponent._minTabletWidth &&
            constraints.maxWidth <= ResponsivePageComponent._maxTableWidth) {
          if (_type != DeviceType.tablet) {
            ScreenUtil.configure(designSize: const Size(1024, 1366));
            _type = DeviceType.tablet;
          }
          return widget.tablet;
        }

        if (constraints.maxWidth >= ResponsivePageComponent._minDesktopWidth) {
          if (_type!= DeviceType.desktop) {
            ScreenUtil.configure(designSize: const Size(1920, 1080));
            _type = DeviceType.desktop;
          }
          return widget.desktop;
        }

        return widget.desktop;
      },
    );
  }
}
