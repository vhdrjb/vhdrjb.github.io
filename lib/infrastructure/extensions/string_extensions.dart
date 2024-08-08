import 'package:flutter/widgets.dart';
import 'dart:html' as html;

extension StringExtensions on String {
  String get toPngImageUrl =>
      '${html.window.location.origin}/assets/images/png/$this.png';

  String get toJpgImageUrl =>
      '${html.window.location.origin}/assets/images/jpg/$this.jpg';

  String get toProjectImageUrl =>
      '${html.window.location.origin}/assets/images/projects/$this.png';

  String get toProjectWebPUrl =>
      '${html.window.location.origin}/assets/images/projects/$this.webp';

  String get toProjectCoverUrl =>
      '${html.window.location.origin}/assets/images/projects/covers/$this.webp';

  String get toNetworkImage =>
      '${html.window.location.origin}/assets/images/projects/$this';

  AssetImage get toPngImage => AssetImage('assets/images/png/$this.png');

  AssetImage get toJpgImage => AssetImage('assets/images/jpg/$this.jpg');
}
