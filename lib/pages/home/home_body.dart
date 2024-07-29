import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/infrastructure/extensions/context_extensions.dart';
import 'package:portfolio/infrastructure/extensions/string_extensions.dart';
import 'package:portfolio/infrastructure/theme/dimensions.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'home_body_1'.tr(),
                      style: context.textTheme.headlineLarge?.copyWith(
                          color: context.appColorScheme.headlineSecondaryColor)),
                  TextSpan(
                      text: ' Vahid',
                      style: context.textTheme.headlineLarge?.copyWith(
                          color: context.appColorScheme.headlinePrimaryColor)),
                ])),
                Dimensions.marginVertical_16,
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'A',
                      style: context.textTheme.headlineMedium?.copyWith(
                          color: context.appColorScheme.headlineSecondaryColor)),
                  TextSpan(
                      text: ' Mobile ',
                      style: context.textTheme.headlineMedium?.copyWith(
                          color: context.appColorScheme.headlinePrimaryColor)),
                  TextSpan(
                      text: 'Developer',
                      style: context.textTheme.headlineMedium?.copyWith(
                          color: context.appColorScheme.headlineSecondaryColor)),
                ])),
              ],
            ),
            Dimensions.marginHorizontal_64,
            Container(
              height: Dimensions.profileSize.w,
              width: Dimensions.profileSize.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: context.appColorScheme.profileBackgroundColor
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(1000),
                child: Image(image: 'profile'.toJpgImage,fit: BoxFit.cover,),
              ),
            )
          ],
        ),
        Dimensions.marginVertical_16,
        RichText(
            text: TextSpan(children: [
          TextSpan(
              text: 'Elevating',
              style: context.textTheme.headlineMedium?.copyWith(
                  color: context.appColorScheme.headlineSecondaryColor)),
          TextSpan(
              text: ' Mobile Dreams ',
              style: context.textTheme.headlineMedium?.copyWith(
                  color: context.appColorScheme.headlinePrimaryColor)),
          TextSpan(
              text: 'into',
              style: context.textTheme.headlineMedium?.copyWith(
                  color: context.appColorScheme.headlineSecondaryColor)),
          TextSpan(
              text: ' Reality ',
              style: context.textTheme.headlineMedium?.copyWith(
                  color: context.appColorScheme.headlinePrimaryColor)),
        ])),
      ],
    );
  }
}
