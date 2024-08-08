import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/infrastructure/extensions/context_extensions.dart';

import '../../../infrastructure/configuration/theme_config.dart';
import '../../../infrastructure/theme/dimensions.dart';
import '../projects/models/project_model.dart';
import '../../components/projects_component.dart';

class ProjectSummeryPage extends StatelessWidget {
  const ProjectSummeryPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * .29;
    return SizedBox(
      height: 4.5 * (.29 * width),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Dimensions.margin_24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Dimensions.marginVertical_32,
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Projects',
                    style: context.textTheme.displaySmall?.copyWith(
                      color: context.appColorScheme.headlineSecondaryColor
                    ),
                  ),
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.centerRight,
                      surfaceTintColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      overlayColor: Colors.transparent,
                      backgroundColor: Colors.transparent,
                      foregroundColor: context.appColorScheme.secondary,
                      textStyle: context.textTheme.titleLarge
                          ?.copyWith(fontWeight: FontWeight.w600),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              Dimensions.allProjectsBorder)),
                      elevation: 0,
                    ),
                    onPressed: () {
                      context.push('/projects');
                    },
                    label: Text('All Projects'),
                    icon: Icon(Icons.keyboard_double_arrow_right),
                  ),
                )
              ],
            ),
            Dimensions.marginVertical_32,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...ProjectsDataProvider.instance.summeryModel.map(
                  (e) => ProjectsComponent(project: e),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
