import 'package:flutter/material.dart';
import 'package:portfolio/infrastructure/extensions/context_extensions.dart';
import 'package:portfolio/infrastructure/extensions/string_extensions.dart';
import 'package:portfolio/infrastructure/theme/dimensions.dart';
import 'package:portfolio/presentation/models/project_model.dart';

class ProjectsComponent extends StatefulWidget {
  final ProjectModel project;

  const ProjectsComponent({super.key, required this.project});

  @override
  State<ProjectsComponent> createState() => _ProjectsComponentState();
}

class _ProjectsComponentState extends State<ProjectsComponent>
    with TickerProviderStateMixin {
  late bool _inside;
  late final DecorationTween _decoration;
  late final AnimationController _controller;
  late final CurvedAnimation _curvedAnimation;

  @override
  void initState() {
    super.initState();
    _inside = false;
    _decoration = DecorationTween(
        begin: BoxDecoration(
            color: const Color(0xff69473F).withOpacity(0.0),
            borderRadius: BorderRadius.circular(Dimensions.projectBorders)),
        end: BoxDecoration(
            gradient: LinearGradient(colors: [
              const Color(0xff69473F).withOpacity(0.9),
              const Color(0xff69473F).withOpacity(0.6),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            borderRadius: BorderRadius.circular(Dimensions.projectBorders)));
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _curvedAnimation =
        CurvedAnimation(parent: _controller, curve: Curves.easeInOutQuad);
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        _controller.forward().whenComplete(
          () {
            setState(() {
              _inside = true;
            });
          },
        );
      },
      onExit: (event) {
        _controller.reverse().whenComplete(
          () {
            setState(() {
              _inside = false;
            });
          },
        );
      },
      child: Container(
        height: 610,
        decoration: BoxDecoration(
            color: context.appColorScheme.projectsBackgroundColor,
            borderRadius: BorderRadius.circular(Dimensions.projectBorders)),
        child: Stack(
          children: [
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: Dimensions.margin_16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Dimensions.marginVertical_16,
                    Text(
                      widget.project.title,
                      style: context.textTheme.titleLarge
                          ?.copyWith(fontWeight: FontWeight.w600),
                    ),
                    Dimensions.marginVertical_16,
                    Expanded(
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Image(
                              image: widget.project.image.toPngImage,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            bottom: Dimensions.margin_16,
                            right: Dimensions.margin_16,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    context.appColorScheme.secondary,
                                foregroundColor:
                                    context.appColorScheme.projectsLabelColor,
                              ),
                              child: Text('detail'),
                              onPressed: () {},
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned.fill(
                child: DecoratedBoxTransition(
              decoration: _decoration.animate(_curvedAnimation),
              child: _inside
                  ? TweenAnimationBuilder<double>(
                      builder: (context, value, child) => Opacity(
                        opacity: value,
                        child: child!,
                      ),
                      duration: Duration(milliseconds: 300),
                      tween: Tween(begin: 0, end: 1),
                      child: Center(
                        child: Column(
                          children: [
                            Dimensions.marginVertical_8,
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: Dimensions.margin_32),
                              child: Text(
                                widget.project.description,
                                style: context.textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.w300,
                                    color: context.appColorScheme.tagTextColor),
                              ),
                            ),
                            Dimensions.marginVertical_8,
                            Wrap(
                              spacing: Dimensions.margin_16,
                              runSpacing: Dimensions.margin_16,
                              children: [
                                ...widget.project.tags.map(
                                  (e) => Chip(
                                    side: BorderSide.none,
                                    labelStyle: context.textTheme.labelSmall
                                        ?.copyWith(
                                            color: context
                                                .appColorScheme.tagTextColor),
                                    backgroundColor:
                                        context.appColorScheme.tagColor,
                                    label: Text(e),
                                  ),
                                )
                              ],
                            ),
                            Dimensions.marginVertical_32,
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                context.appColorScheme.tagTextColor,
                                foregroundColor:
                                context.appColorScheme.tagColor,
                              ),
                              child: Text('detail'),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    )
                  : SizedBox.expand(),
            )),
          ],
        ),
      ),
    );
  }
}
