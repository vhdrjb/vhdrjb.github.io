import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/infrastructure/extensions/context_extensions.dart';
import 'package:portfolio/infrastructure/extensions/string_extensions.dart';
import 'package:portfolio/infrastructure/theme/dimensions.dart';
import 'package:portfolio/presentation/pages/projects/models/project_model.dart';

class ProjectsComponent extends StatefulWidget {
  final ProjectModel project;

  ProjectsComponent({required this.project}) : super(key: UniqueKey());

  @override
  State<ProjectsComponent> createState() => _ProjectsComponentState();
}

class _ProjectsComponentState extends State<ProjectsComponent>
    with TickerProviderStateMixin {
  late bool _inside;
  late final DecorationTween _decoration;
  late final AnimationController _controller;
  late final CurvedAnimation _curvedAnimation;
  late final Tween<double> _scaleAnimation;

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
              const Color(0xff69473F).withOpacity(0.99),
              const Color(0xff69473F).withOpacity(0.85),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            borderRadius: BorderRadius.circular(Dimensions.projectBorders)));
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _scaleAnimation = Tween(begin: 1, end: 1.035);
    _curvedAnimation =
        CurvedAnimation(parent: _controller, curve: Curves.easeInOutQuad);
  }
  @override
  void dispose() {
    _curvedAnimation.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * .23;
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
        setState(() {
          _inside = false;
        });
        _controller.reverse().whenComplete(
              () {},
            );
      },
      child: SizedBox(
        height: width,
        width: width,
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                color: context.appColorScheme.projectsBackgroundColor,
                borderRadius: BorderRadius.circular(Dimensions.projectBorders)),
            child: Stack(
              clipBehavior: Clip.antiAlias,
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
                          child: ScaleTransition(
                            scale: _scaleAnimation.animate(_curvedAnimation),
                            child: Hero(
                              tag: 'cover',
                              child: CachedNetworkImage(
                                imageUrl: widget.project.image.toProjectCoverUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
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
                          duration: const Duration(milliseconds: 300),
                          tween: Tween(begin: 0, end: 1),
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Dimensions.marginVertical_8,
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: Dimensions.margin_32),
                                  child: Text(
                                    widget.project.description,
                                    maxLines: 3,
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.ellipsis,
                                    style: context.textTheme.titleLarge
                                        ?.copyWith(
                                            fontWeight: FontWeight.w500,
                                            color: context
                                                .appColorScheme.tagTextColor),
                                  ),
                                ),
                                Dimensions.marginVertical_8,
                                Wrap(
                                  spacing: Dimensions.margin_16,
                                  runSpacing: Dimensions.margin_16,
                                  children: [
                                    ...widget.project.tags.take(3).map(
                                      (e) => Chip(
                                        side: BorderSide.none,
                                        labelStyle: context.textTheme.titleMedium
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
                                    textStyle: context.textTheme.titleMedium?.copyWith(
                                      fontWeight: FontWeight.w600
                                    ),
                                    backgroundColor:
                                        context.appColorScheme.tagTextColor,
                                    foregroundColor:
                                        context.appColorScheme.tagColor,
                                  ),
                                  child: const Text('detail'),
                                  onPressed: () {
                                    context.push('/projects/${widget.project.id}',extra: widget.project.title);
                                  },
                                ),
                              ],
                            ),
                          ),
                        )
                      : const SizedBox.expand(),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
