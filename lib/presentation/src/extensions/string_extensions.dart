import 'package:flutter/widgets.dart';
// import 'dart:html' as html;

extension StringExtensions on String {
  String get toPngImageUrl =>
      'assets/assets/images/png/$this.png';

  String get toJpgImageUrl =>
      'assets/assets/images/jpg/$this.jpg';

  String get toProjectImageUrl =>
      'assets/assets/images/projects/$this.png';

  String get toProjectWebPUrl =>
      'assets/assets/images/projects/$this.webp';

  String get toProjectCoverUrl =>
      'assets/assets/images/projects/covers/$this.webp';

  String get toNetworkImage =>
      'assets/assets/images/projects/$this';

  AssetImage get toPngImage => AssetImage('assets/images/png/$this.png');

  AssetImage get toJpgImage => AssetImage('assets/images/jpg/$this.jpg');

  String get toSvg => 'assets/images/svg/$this.svg';

  Color get hexToColor {
    final String hexString = replaceFirst('#', '0xff');
    return Color(int.parse(hexString));
  }
}
