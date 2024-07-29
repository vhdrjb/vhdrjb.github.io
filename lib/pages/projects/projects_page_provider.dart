import 'package:flutter/material.dart';
import 'package:portfolio/pages/projects/projects_page.dart';

import '../components/responsive_page_component.dart';

class ProjectsPageProvider extends StatelessWidget {
  const ProjectsPageProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsivePageComponent(
        desktop: const ProjectsPage(),
        mobile: Container(
          color: Colors.orange,
        ),
        tablet: Container(
          color: Colors.green,
        ));
  }
}
