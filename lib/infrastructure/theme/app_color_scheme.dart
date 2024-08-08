import 'package:flutter/material.dart';

abstract class AppColorScheme extends ColorScheme {
  static AppColorScheme? _darkInstance;
  static AppColorScheme? _lightInstance;

  const AppColorScheme._light({super.secondary, super.surface}) : super.light();

  const AppColorScheme._dark() : super.dark();

  factory AppColorScheme.light() {
    _lightInstance ??= const _LightColorScheme();
    return _lightInstance!;
  }

  factory AppColorScheme.dark() {
    _darkInstance ??= const _DarkColorScheme();
    return _darkInstance!;
  }

  Color get headlineSecondaryColor;

  Color get headlinePrimaryColor;

  Color get profileBackgroundColor;

  Color get homeInfoLabelColor;

  Color get projectsBackgroundColor;

  Color get projectsLabelColor;

  Color get tagColor;

  Color get tagTextColor;
}

class _LightColorScheme extends AppColorScheme {
  const _LightColorScheme()
      : super._light(
            secondary: const Color(0xff69473F),
            surface: const Color(0xffEFEFEF));

  @override
  Color get headlinePrimaryColor => const Color(0xff474340);

  @override
  Color get headlineSecondaryColor => const Color(0xffB9B9B9);

  @override
  Color get profileBackgroundColor => const Color(0xffD9D9D9);

  @override
  Color get homeInfoLabelColor => const Color(0xff63717F);

  @override
  Color get projectsBackgroundColor => profileBackgroundColor;

  @override
  Color get projectsLabelColor => Colors.white;

  @override
  Color get tagColor => headlinePrimaryColor;

  @override
  Color get tagTextColor => Colors.white;
}

class _DarkColorScheme extends AppColorScheme {
  const _DarkColorScheme() : super._dark();

  @override
  Color get headlinePrimaryColor => throw UnimplementedError();

  @override
  Color get headlineSecondaryColor => throw UnimplementedError();

  @override
  Color get profileBackgroundColor => throw UnimplementedError();

  @override
  Color get homeInfoLabelColor => throw UnimplementedError();

  @override
  Color get projectsBackgroundColor => throw UnimplementedError();

  @override
  Color get projectsLabelColor => throw UnimplementedError();

  @override
  Color get tagColor => throw UnimplementedError();

  @override
  Color get tagTextColor => throw UnimplementedError();
}
