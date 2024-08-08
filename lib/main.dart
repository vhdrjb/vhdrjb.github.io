import 'dart:html' as html;
import 'dart:ui' as ui;
import 'dart:ui';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/infrastructure/conductor/launcher.dart';
import 'package:portfolio/infrastructure/configuration/resolution_config.dart';
import 'package:portfolio/infrastructure/route/provider/app_router.dart';
import 'package:portfolio/infrastructure/theme/app_theme.dart';

void main() {
  launch(MyApp.new);
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late AppRouter _router;

  @override
  void initState() {
    super.initState();
    _router = AppRouter();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
    designSize: ResolutionConfig.instance.getDesignSize(context),
      child: MaterialApp.router(
        title: 'Vahid Rajabi Portfolio',
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        routerDelegate: _router.router.routerDelegate,
        routeInformationParser: _router.router.routeInformationParser,
        routeInformationProvider: _router.router.routeInformationProvider,
        scrollBehavior: const MaterialScrollBehavior().copyWith(
          dragDevices: {PointerDeviceKind.mouse, PointerDeviceKind.touch, PointerDeviceKind.stylus, PointerDeviceKind.unknown},
        ),
        locale: context.locale,
        theme: AppTheme.theme(brightness: Brightness.light).themeData,
      ),
    );
  }
}
