import 'package:flutter/material.dart';
import 'package:portfolio/infrastructure/extensions/context_extensions.dart';
import 'package:portfolio/presentation/pages/home/home_page_provider.dart';

import '../../../infrastructure/configuration/resolution_config.dart';
import '../project_summery/project_summery_provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    ResolutionConfig.instance.config(context);
    return Scaffold(
        backgroundColor: context.appColorScheme.surface,
        body: ListView(
          children: const [
            HomePageProvider(),
            ProjectSummeryProvider()
          ],
        ));
  }
}
