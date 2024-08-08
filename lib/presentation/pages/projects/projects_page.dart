
import 'package:flutter/material.dart';
import 'package:portfolio/infrastructure/configuration/theme_config.dart';
import 'package:portfolio/infrastructure/theme/dimensions.dart';
import 'package:portfolio/presentation/components/projects_component.dart';
import 'package:portfolio/presentation/pages/projects/models/project_model.dart';

import '../../components/nav_bar_component.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                  top: Dimensions.margin_32, right: Dimensions.margin_32),
              child: NavBarComponent(),
            ),
            Dimensions.marginVertical_64,
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: Dimensions.margin_32),
              child: GridView.count(
                  crossAxisCount: ThemeConfig.displayProjectCount,
                  crossAxisSpacing: Dimensions.margin_32,
                  mainAxisSpacing: Dimensions.margin_32,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    ...ProjectsDataProvider.instance.models.map(
                      (e) => ProjectsComponent(project: e),
                    )
                  ]),
            ),
            Dimensions.marginVertical_24
          ],
        ),
      ),
    );
  }
}


