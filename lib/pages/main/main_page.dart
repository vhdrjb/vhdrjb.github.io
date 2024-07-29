import 'package:flutter/material.dart';
import 'package:portfolio/infrastructure/extensions/context_extensions.dart';
import 'package:portfolio/pages/home/home_page_provider.dart';

import '../projects/projects_page_provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.appColorScheme.surface,
        body: ListView(
          children: const [
            HomePageProvider(),
            ProjectsPageProvider()
          ],
        ));
  }
}
