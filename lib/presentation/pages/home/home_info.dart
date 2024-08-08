import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/infrastructure/extensions/context_extensions.dart';

import '../../widgets/home_info_widget.dart';


class HomeInfo extends StatelessWidget {
  const HomeInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        children: [
          HomeInfoWidget(
            first: true,
            label: 'Experiences',
            text: RichText(
              text: TextSpan(
                  style: context.textTheme.headlineLarge
                      ?.copyWith(color: context.appColorScheme.secondary,fontWeight: FontWeight.bold),
                  text: '+8 Years'),
            ),
          ),
          HomeInfoWidget(
            label: 'Professional Roles',
            text: RichText(
              text: TextSpan(
                text: 'Mentor, Technical Writer, Team lead',
                style: context.textTheme.headlineLarge
                    ?.copyWith(color: context.appColorScheme.secondary,fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
