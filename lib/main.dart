import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/infrastructure/conductor/launcher.dart';
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
    return MaterialApp.router(
      routerConfig: _router.generateRouter(),
      title: 'Vahid Rajabi Portfolio',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: AppTheme.theme(brightness: Brightness.light).themeData,
    );
  }
}
