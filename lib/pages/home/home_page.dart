import 'package:flutter/material.dart';
import 'package:portfolio/infrastructure/extensions/context_extensions.dart';
import 'package:portfolio/infrastructure/theme/dimensions.dart';
import 'package:portfolio/pages/components/nav_bar_component.dart';
import 'package:portfolio/pages/components/social_component.dart';

import 'home_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.appColorScheme.surface,
        body: const Stack(children: [
          Positioned(
            right: Dimensions.margin_32,
            top: Dimensions.margin_32,
            child: NavBarComponent(),
          ),
          Positioned(
            left: Dimensions.margin_32,
            bottom: 0,
            top: 0,
            child: Center(child: SocialComponent()),
          ),
          Positioned.fill(
            child: Center(child: HomeBody()),
            top: Dimensions.margin_64,
            left: Dimensions.margin_64,
            right: Dimensions.margin_64,
            bottom: Dimensions.margin_64,
          ),
        ]));
  }
}
