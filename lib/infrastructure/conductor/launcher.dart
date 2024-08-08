import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:go_router/go_router.dart';

typedef Application = Widget Function();

Future<void> launch(Application application) async {
  WidgetsFlutterBinding.ensureInitialized();

  // web config
  usePathUrlStrategy();
  GoRouter.optionURLReflectsImperativeAPIs = true;
  // localization config
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
      path: 'assets/l10n',
      supportedLocales: const [Locale('en')],
      fallbackLocale: const Locale('en'),
      child: application()));
}
