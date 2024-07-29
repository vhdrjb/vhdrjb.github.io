import 'package:go_router/go_router.dart';
import 'package:portfolio/pages/home/home_page.dart';

import '../routes.dart';
import 'app_route_factory.dart';

class AppRouter {
  GoRouter? _goRouter;
  final AppRouteFactory _factory;

  AppRouter() : _factory = const AppRouteFactory();

  GoRouter generateRouter() {
    final GoRouter goRouter;
    if (_goRouter == null) {
      goRouter = GoRouter(debugLogDiagnostics: true, routes: [
        GoRoute(path: Routes.home, pageBuilder: _factory.create),
      ]);
      _goRouter = goRouter;
    } else {
      goRouter = _goRouter!;
    }
    return goRouter;
  }
}
