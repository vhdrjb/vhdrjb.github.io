import 'package:flutter/material.dart';
import 'package:portfolio/presentation/components/responsive_page_component.dart';
import 'package:portfolio/presentation/pages/project_summery/project_summery_page.dart';

class ProjectSummeryProvider extends StatelessWidget {
  const ProjectSummeryProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsivePageComponent(desktop: const ProjectSummeryPage(), mobile: Container(), tablet: Container());
  }
}
