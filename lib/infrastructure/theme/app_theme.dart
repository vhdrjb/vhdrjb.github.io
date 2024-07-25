import 'package:flutter/material.dart';
import 'package:portfolio/infrastructure/theme/app_color_scheme.dart';

class AppTheme {
  late ThemeData themeData;

  AppTheme._light()
      : themeData = ThemeData(
            colorScheme: AppColorScheme.light(),
            fontFamily: 'primary_font',
            useMaterial3: true);

  AppTheme._dark()
      : themeData = ThemeData(
            colorScheme: AppColorScheme.dark(),
            fontFamily: 'primary_font',
            useMaterial3: true);

  factory AppTheme.theme({required Brightness brightness}) {
    if (brightness == Brightness.dark) {
      return AppTheme._dark();
    } else {
      return AppTheme._light();
    }
  }
}
