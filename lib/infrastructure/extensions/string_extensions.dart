import 'package:flutter/widgets.dart';

extension StringExtensions on String {
  AssetImage get toPngImage => AssetImage('assets/images/png/$this.png');
  AssetImage get toJpgImage => AssetImage('assets/images/jpg/$this.jpg');
}