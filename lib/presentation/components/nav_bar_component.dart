import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/infrastructure/extensions/context_extensions.dart';
import 'package:portfolio/infrastructure/theme/dimensions.dart';

import '../../infrastructure/route/routes.dart';

class NavBarComponent extends StatelessWidget {
  const NavBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Dimensions.marginHorizontal_32,
        TextButton(
          onPressed: () => context.push(Routes.projects),
          child: Text(
            'projects',
            style: context.textTheme.labelLarge,
          ).tr(),
        ),
        Dimensions.marginHorizontal_24,
        Container(
          height: Dimensions.navbarDividerHeight,
          width: Dimensions.navbarDividerWidth,
          color: context.appColorScheme.secondary,
        ),
        Dimensions.marginHorizontal_24,
        Text(
          'services',
          style: context.textTheme.labelLarge,
        ).tr(),
        Dimensions.marginHorizontal_24,
        Container(
          height: Dimensions.navbarDividerHeight,
          width: Dimensions.navbarDividerWidth,
          color: context.appColorScheme.secondary,
        ),
        Dimensions.marginHorizontal_24,
        Text(
          'about_me',
          style: context.textTheme.labelLarge,
        ).tr(),
        Dimensions.marginHorizontal_24,
        Container(
          height: Dimensions.navbarDividerHeight,
          width: Dimensions.navbarDividerWidth,
          color: context.appColorScheme.secondary,
        ),
        Dimensions.marginHorizontal_24,
        Text(
          'contact_me',
          style: context.textTheme.labelLarge,
        ).tr(),
        Dimensions.marginHorizontal_32,
      ],
    );
  }
}
