import 'package:flutter/material.dart';
import 'package:portfolio/infrastructure/extensions/string_extensions.dart';
import 'package:portfolio/infrastructure/theme/dimensions.dart';

import '../widgets/shadow_image.dart';

class SocialComponent extends StatelessWidget {
  const SocialComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ShadowImage(
          image: 'github'.toPngImage,
          height: Dimensions.socialIconSize,
          width: Dimensions.socialIconSize,

        ),
        Dimensions.marginVertical_64,
        ShadowImage(
          image: 'linkedin'.toPngImage,
          height: Dimensions.socialIconSize,
          width: Dimensions.socialIconSize,
        ),
        Dimensions.marginVertical_64,
        ShadowImage(
          image: 'telegram'.toPngImage,
          height: Dimensions.socialIconSize,
          width: Dimensions.socialIconSize,
        ),
        Dimensions.marginVertical_64,
        ShadowImage(
          image: 'instagram'.toPngImage,
          height: Dimensions.socialIconSize,
          width: Dimensions.socialIconSize
        ),
      ],
    );
  }
}
