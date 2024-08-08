import 'package:portfolio/infrastructure/types/device_type.dart';

abstract class ThemeConfig {
  static DeviceType? type = null;
  static int get displayProjectCount {
    if (type == DeviceType.desktop) {
      return 4;
    }else if (type ==DeviceType.tablet) {
      return 2;
    }else{
      return 1;
    }
  }
}