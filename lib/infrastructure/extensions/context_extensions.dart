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
      displayLarge: TextStyle(
        fontFamily: 'primary_font',
        fontSize: 96.sp,
      ),
      displayMedium: TextStyle(
        fontFamily: 'primary_font',
        fontSize: 64.sp,
      ),
      displaySmall: TextStyle(
        fontFamily: 'primary_font',
        fontSize: 36.sp,
      ),
      headlineLarge: TextStyle(fontFamily: 'primary_font', fontSize: 32.sp),
      headlineSmall: TextStyle(
        fontFamily: 'primary_font',
        fontSize: 24.sp,
      ),
      titleLarge: TextStyle(fontFamily: 'primary_font', fontSize: 22.sp),
      titleMedium: TextStyle(
        fontSize: 16.sp,
        fontFamily: 'primary_font',
      ),
      labelLarge: const TextStyle(
          fontFamily: 'navbar_font', fontWeight: FontWeight.bold, fontSize: 15),
      bodyMedium: TextStyle(
        fontFamily: 'post_font',
        fontSize: 25.sp,
      )

      // labelMedium: const TextStyle(
      //     fontFamily: 'navbar_font',
      //     fontWeight: FontWeight.bold,
      //     fontSize: 15),
      // titleLarge: TextStyle(
      //     fontFamily: 'primary_font',
      //     fontSize: 32.sp,
      //     fontWeight: FontWeight.bold),
      // titleMedium: TextStyle(
      //   fontFamily: 'primary_font',
      //   fontSize: 20.sp
      // ),
      // labelSmall: TextStyle(
      //   fontFamily: 'primary_font',
      //   fontSize: 20.sp
      // ),
      // labelLarge: TextStyle(fontFamily: 'primary_font', fontSize: 24.sp),
      // headlineLarge: TextStyle(fontFamily: 'primary_font', fontSize: 96.sp),
      // headlineMedium: TextStyle(fontFamily: 'primary_font', fontSize: 64.sp),
      );

  Size get screenSize => MediaQuery.of(this).size;
}
