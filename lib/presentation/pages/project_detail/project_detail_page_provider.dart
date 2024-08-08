import 'package:flutter/material.dart';
import 'package:portfolio/presentation/components/responsive_page_component.dart';
import 'package:portfolio/presentation/pages/project_detail/project_detail_page.dart';

class ProjectDetailPageProvider extends StatelessWidget {
  final String id;

  const ProjectDetailPageProvider({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return ResponsivePageComponent(
        desktop: ProjectDetailPage(
          projectId: id,
        ),
        mobile: Container(),
        tablet: Container());
  }
}
