import 'package:flutter/material.dart';

abstract class AppColorScheme extends ColorScheme {
  static AppColorScheme? _darkInstance;
  static AppColorScheme? _lightInstance;

  const AppColorScheme._light() : super.light();

  const AppColorScheme._dark() : super.dark();

  factory AppColorScheme.light() {
    _lightInstance ??= const _LightColorScheme();
    return _lightInstance!;
  }

  factory AppColorScheme.dark() {
    _darkInstance ??= const _DarkColorScheme();
    return _darkInstance!;
  }
}

class _LightColorScheme extends AppColorScheme {
  const _LightColorScheme() : super._light();
}

class _DarkColorScheme extends AppColorScheme {
  const _DarkColorScheme() : super._dark();
}
