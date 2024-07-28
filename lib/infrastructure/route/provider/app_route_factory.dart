import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/pages/home/home_page.dart';

import '../routes.dart';

class AppRouteFactory {
  const AppRouteFactory();
  MaterialPage create(BuildContext context, GoRouterState state) {
    final String path = state.path ?? Routes.home;
    if (path == Routes.home) {
      return const MaterialPage(child: HomePage(),name: 'Vahid Rajabi Portfolio');
    }
    throw 'error';
  }
}
