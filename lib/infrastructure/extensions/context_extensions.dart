import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            fontSize: 15),
        titleLarge: TextStyle(
            fontFamily: 'primary_font',
            fontSize: 32.sp,
            fontWeight: FontWeight.bold),
        labelLarge: TextStyle(fontFamily: 'primary_font', fontSize: 24.sp),
        headlineLarge: TextStyle(fontFamily: 'primary_font', fontSize: 96.sp),
        headlineMedium: TextStyle(fontFamily: 'primary_font', fontSize: 64.sp),
      );
}
