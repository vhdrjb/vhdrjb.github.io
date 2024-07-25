import 'package:flutter/material.dart';
import 'package:portfolio/infrastructure/theme/app_color_scheme.dart';

extension ContextExtensions on BuildContext {
  AppColorScheme get appColorScheme =>
      Theme.of(this).brightness == Brightness.dark
          ? AppColorScheme.dark()
          : AppColorScheme.light();

  TextTheme get textTheme => Theme.of(this).textTheme;
}
