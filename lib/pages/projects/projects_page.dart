import 'package:flutter/material.dart';
import 'package:portfolio/infrastructure/extensions/context_extensions.dart';
import 'package:portfolio/infrastructure/theme/dimensions.dart';
import 'package:portfolio/pages/components/projects_component.dart';
import 'package:portfolio/presentation/models/project_model.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Dimensions.margin_24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Projects',
              style: context.textTheme.titleLarge,
            ),
            Expanded(
                child: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              children: [
                ...List.generate(10,(index) => ProjectsComponent(project: ProjectModel(
                  description: 'Lorem Ipsum has been the industrys standard dummy text ever since the  1500s,',
                  title: 'Fanoos',
                  image: 'device',
                  tags: [
                    'flutter','getX','bloc','DI'
                  ]
                )), )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
