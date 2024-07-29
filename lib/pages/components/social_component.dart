import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          height: Dimensions.socialIconSize.w,
          width: Dimensions.socialIconSize.w,

        ),
        Dimensions.marginVertical_64,
        ShadowImage(
          image: 'linkedin'.toPngImage,
          height: Dimensions.socialIconSize.w,
          width: Dimensions.socialIconSize.w,
        ),
        Dimensions.marginVertical_64,
        ShadowImage(
          image: 'telegram'.toPngImage,
          height: Dimensions.socialIconSize.w,
          width: Dimensions.socialIconSize.w,
        ),
        Dimensions.marginVertical_64,
        ShadowImage(
          image: 'instagram'.toPngImage,
          height: Dimensions.socialIconSize.w,
          width: Dimensions.socialIconSize.w
        ),
      ],
    );
  }
}
