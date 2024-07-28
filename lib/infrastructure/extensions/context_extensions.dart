import 'package:flutter/material.dart';
import 'package:portfolio/infrastructure/theme/app_color_scheme.dart';

extension ContextExtensions on BuildContext {
  AppColorScheme get appColorScheme =>
      Theme.of(this).brightness == Brightness.dark
          ? AppColorScheme.dark()
          : AppColorScheme.light();

  TextTheme get textTheme => Theme.of(this).textTheme.copyWith(
    // navbar
    labelMedium: const TextStyle(
      fontFamily: 'navbar_font',
      fontWeight: FontWeight.bold,
      fontSize: 15
    ),
    headlineLarge: const TextStyle(
      fontFamily: 'primary_font',
      fontSize: 96
    ),
    headlineMedium: const TextStyle(
      fontFamily: 'primary_font',
      fontSize: 64
    ),
  );

}
