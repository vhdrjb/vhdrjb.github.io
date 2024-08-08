import 'dart:async';
import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/infrastructure/extensions/context_extensions.dart';
import 'package:portfolio/infrastructure/extensions/string_extensions.dart';
import 'package:portfolio/infrastructure/theme/dimensions.dart';
import 'package:portfolio/presentation/components/gallery_component.dart';
import 'package:portfolio/presentation/components/nav_bar_component.dart';
import 'package:portfolio/presentation/pages/projects/models/project_model.dart';

import '../../components/project_company_component.dart';

class ProjectDetailPage extends StatefulWidget {
  final String projectId;

  const ProjectDetailPage({super.key, required this.projectId});

  @override
  State<ProjectDetailPage> createState() => _ProjectDetailPageState();
}

class _ProjectDetailPageState extends State<ProjectDetailPage> {
  late ProjectModel _projectModel;

  @override
  void initState() {
    super.initState();
    _projectModel = ProjectsDataProvider.instance.findById(widget.projectId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(
                    top: Dimensions.margin_32, right: Dimensions.margin_32),
                child: NavBarComponent(),
              ),
            ),
            Dimensions.marginVertical_64,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: 'cover',
                  child: CachedNetworkImage(
                    imageUrl: _projectModel.image.toProjectCoverUrl,
                    width: context.screenSize.width / 4,
                    fit: BoxFit.contain,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: Dimensions.margin_64),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _projectModel.title,
                          style: context.textTheme.headlineLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),

                        SizedBox(
                          width: context.screenSize.width / 3,
                          child: const Divider(),
                        ),
                        if (_projectModel.company != null)
                          ProjectCompanyComponent(
                            companyName: _projectModel.company!,
                            companyIcon: _projectModel.companyIcon,
                          ),
                        Text(
                          _projectModel.description,
                          style:
                              context.textTheme.bodyMedium?.copyWith(height: 2),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: SizedBox(
                width: context.screenSize.width / 3,
                child: const Divider(),
              ),
            ),
            Center(
                child: Text(
              'Screenshots',
              style: context.textTheme.headlineLarge,
            )),
            Center(
              child: SizedBox(
                width: context.screenSize.width / 3,
                child: Divider(),
              ),
            ),
            Dimensions.marginVertical_64,
            SizedBox(
                height: 400,
                child: GalleryComponent(projectId: _projectModel.id)),
          ],
        ),
      ),
    );
  }
}
