import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/infrastructure/extensions/context_extensions.dart';
import 'package:portfolio/infrastructure/extensions/string_extensions.dart';
import 'package:portfolio/presentation/notifier/scroll_notifier.dart';

import '../../../infrastructure/theme/dimensions.dart';
import '../../components/projects_component.dart';
import '../projects/models/project_model.dart';

class ProjectSummeryDelegate extends SliverPersistentHeaderDelegate {
  final double maxHeight;
  final ScrollNotifier scrollNotifier;

  const ProjectSummeryDelegate(
      {required this.maxHeight, required this.scrollNotifier});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    double width = MediaQuery.of(context).size.width * .29;
    return ListenableBuilder(
        listenable: scrollNotifier,
        builder: (context, child) {
          return Stack(
            children: [
              Positioned(
                top: min(
                    scrollNotifier.scrollOffset * 25 -
                        2 * context.screenSize.height,
                    -context.screenSize.height/4.5),
                bottom: 0,
                left:  (scrollNotifier.scrollOffset * 25 -
                    2 * context.screenSize.height <  -context.screenSize.height/4.5)? 0 : scrollNotifier.scrollOffset ,
                right: 0,
                child: Center(
                  child: CachedNetworkImage(
                    imageUrl: 'damapa/1.webp'.toNetworkImage,
                    height: min(300 + scrollNotifier.scrollOffset, 300),
                  ),
                ),
              ),
              // Positioned(
              //   top: min(
              //       scrollNotifier.scrollOffset * 25 -
              //           2 * context.screenSize.height,
              //       -context.screenSize.height/4.5),
              //   bottom: 0,
              //   left: scrollNotifier.scrollOffset * 25 -
              //       2 * context.screenSize.width,
              //   right: 0,
              //   child: Center(
              //     child: CachedNetworkImage(
              //       imageUrl: 'damapa/2.webp'.toNetworkImage,
              //       height: min(300 + scrollNotifier.scrollOffset, 300),
              //     ),
              //   ),
              // ),
              // Positioned(
              //   top: min(
              //       scrollNotifier.scrollOffset * 25 -
              //           2 * context.screenSize.height,
              //       -context.screenSize.height/4.5),
              //   bottom: 0,
              //   left: 0,
              //   right: 0,
              //   child: Center(
              //     child: CachedNetworkImage(
              //       imageUrl: 'damapa/1.webp'.toNetworkImage,
              //       height: min(300 + scrollNotifier.scrollOffset, 300),
              //     ),
              //   ),
              // ),
              // Positioned(
              //   top: min(
              //       scrollNotifier.scrollOffset * 25 -
              //           2 * context.screenSize.height,
              //       -context.screenSize.height/4.5),
              //   bottom: 0,
              //   left: scrollNotifier.scrollOffset * 25 -
              //       2 * context.screenSize.width,
              //   right: 0,
              //   child: Center(
              //     child: CachedNetworkImage(
              //       imageUrl: 'damapa/1.webp'.toNetworkImage,
              //       height: min(300 + scrollNotifier.scrollOffset, 300),
              //     ),
              //   ),
              // ),
            ],
          );
        });
  }

  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => 100;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
