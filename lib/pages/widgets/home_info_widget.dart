import 'package:flutter/material.dart';
import 'package:portfolio/infrastructure/theme/dimensions.dart';
import '../../infrastructure/extensions/context_extensions.dart';

class HomeInfoWidget extends StatelessWidget {
  final String label;
  final bool first;
  final RichText text;

  const HomeInfoWidget(
      {super.key,
      required this.label,
      required this.text,
      this.first = false,
      });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (first)
          Container(
            height: Dimensions.homeDividerHeight,
            width: Dimensions.homeDividerWidth,
            color: context.appColorScheme.secondary,
          ),
        const SizedBox(
          width: Dimensions.margin_24,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            text,
            Dimensions.marginVertical_8,
            Text(
              label,
              style: context.textTheme.labelLarge
                  ?.copyWith(color: context.appColorScheme.homeInfoLabelColor),
            )
          ],
        ),
        const SizedBox(
          width: Dimensions.margin_24,
        ),
        Container(
          height: Dimensions.homeDividerHeight,
          width: Dimensions.homeDividerWidth,
          color: context.appColorScheme.secondary,
        )
      ],
    );
  }
}
