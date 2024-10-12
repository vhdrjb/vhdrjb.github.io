import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/infrastructure/extensions/context_extensions.dart';
import 'package:portfolio/presentation/notifier/page_notifier.dart';
import 'package:portfolio/presentation/notifier/scroll_notifier.dart';

import '../../../infrastructure/theme/dimensions.dart';
import '../../components/nav_bar_component.dart';
import '../../components/social_component.dart';
import 'home_body.dart';
import 'home_info.dart';

class HomeDelegate extends SliverPersistentHeaderDelegate {
  final ScrollNotifier scrollNotifier;
  final double maxHeight;

  const HomeDelegate({
    required this.scrollNotifier,
    required this.maxHeight,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return ListenableBuilder(
        listenable: scrollNotifier,
        builder: (context, child) {
          print(scrollNotifier.scrollOffset);
          return SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Stack(
                clipBehavior: Clip.none,
                children: [
              Positioned(
                left: Dimensions.margin_32 - scrollNotifier.scrollOffset,
                bottom: 0,
                top: 0,
                child: const Center(child: SocialComponent()),
              ),
               Positioned.fill(
                top: 0,
                right: 0,
                child: Center(child: HomeBody(scrollOffsets: scrollNotifier.scrollOffset,)),
              ),
              Positioned(
                left: Dimensions.margin_64,
                right: Dimensions.margin_64,
                bottom: Dimensions.margin_64,
                child: Opacity(
                  opacity: max(0, (100-scrollNotifier.scrollOffset/4)/100),
                  child: HomeInfo(),
                ),
              ),
                  const Positioned(
                    right: Dimensions.margin_32,
                    top: Dimensions.margin_32,
                    child: NavBarComponent(),
                  ),
            ]),
          );
        });
  }

  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => 100;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    if (maxHeight != oldDelegate.maxExtent) {
      return true;
    }
    return false;
  }
}
