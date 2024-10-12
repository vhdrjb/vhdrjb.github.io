import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/presentation/pages/custom/custom_page.dart';
import 'package:portfolio/presentation/pages/home/home_page.dart';
import 'package:portfolio/presentation/pages/home/home_page_provider.dart';
import 'package:portfolio/presentation/pages/project_detail/project_detail_page_provider.dart';
import 'package:portfolio/presentation/pages/projects/projects_page.dart';
import 'package:portfolio/presentation/pages/projects/projects_page_provider.dart';

import '../../../presentation/pages/main/main_page.dart';
import '../routes.dart';

class AppRouteFactory {
  const AppRouteFactory();

  MaterialPage create(BuildContext context, GoRouterState state) {
    final String path = state.path ?? Routes.home;
    if (path == Routes.home) {
      return const MaterialPage(
          child: MainPage(), name: 'Vahid Rajabi Portfolio');
    } else if (path == Routes.projects) {
      return const MaterialPage(
          child: ProjectsPageProvider(), name: 'Projects');
    } else if (path == Routes.projectDetail) {
      String? projectId = state.pathParameters['projectId'];
      String? projectName = state.extra?.toString();
      return MaterialPage(
          child: ProjectDetailPageProvider(id: projectId!),);
    }else if (path == Routes.custom) {
      return MaterialPage(child: CustomPage());
    }

    throw 'error';
  }
}
