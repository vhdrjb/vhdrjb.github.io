import 'package:flutter/cupertino.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:easy_localization/easy_localization.dart';

typedef Application = Widget Function();

Future<void> launch(Application application) async {
  WidgetsFlutterBinding.ensureInitialized();

  // web config
  usePathUrlStrategy();

  // localization config
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
      path: 'assets/l10n',
      supportedLocales: const [Locale('en')],
      fallbackLocale: const Locale('en'),
      child: application()));
}
