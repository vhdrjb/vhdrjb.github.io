import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/infrastructure/extensions/context_extensions.dart';
import 'package:portfolio/infrastructure/extensions/string_extensions.dart';
import 'package:portfolio/infrastructure/theme/dimensions.dart';

class HomeBody extends StatelessWidget {
  final double scrollOffsets;

  const HomeBody({super.key, required this.scrollOffsets});

  @override
  Widget build(BuildContext context) {
    final scrollOffset = scrollOffsets / 1.2;
    return Container(
      color: Colors.white.withOpacity(min(1, scrollOffset/400)),
      child: Stack(
        children: [
        Positioned(
          top:max(Dimensions.margin_32,0.38.sh-scrollOffset),
          left: max((context.screenSize.width/1.6 - Dimensions.profileSize.w/2) - scrollOffset*2.5,Dimensions.margin_32),
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(1000),
              child: Container(
                height: min(
                          Dimensions.profileSize.w,
                          max(  Dimensions.profileSize - scrollOffset,
                              Dimensions.profileMinSize),
                        ),
                width:min(
                          Dimensions.profileSize.w,
                          max(  Dimensions.profileSize - scrollOffset,
                              Dimensions.profileMinSize),
                        ),
                decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: context.appColorScheme.profileBackgroundColor
                           ),
                child: CachedNetworkImage(
                          imageUrl: 'pic'.toPngImageUrl,
                          alignment: Alignment.topCenter,
                          fit: BoxFit.cover,
                        ),
              ),
            ),
          ),
        ),

        Positioned(
          top: max(context.screenSize.height/5.sp- (scrollOffset*1.1)+Dimensions.profileSize.w,Dimensions.margin_32 + 16),
          left: max((context.screenSize.width/5) - scrollOffset*1.2,Dimensions.margin_64 + Dimensions.profileMinSize ),
          child: Center(
            child:  RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: 'home_body_1'.tr(),
                                style: context.textTheme.displayLarge?.copyWith(
                                  fontSize: max(96 - (scrollOffset / 5),25).sp,
                                    color: context.appColorScheme.headlineSecondaryColor)),
                            TextSpan(
                                text: ' Vahid',
                                style: context.textTheme.displayLarge?.copyWith(
                                  fontSize: max(96 - (scrollOffset/5), 21).sp,
                                    color: context.appColorScheme.headlinePrimaryColor)),
                          ])),
          ),
        ),
        Positioned(
          top: max(context.screenSize.height/5.sp- (scrollOffset*1.3)+(1.5 * Dimensions.profileSize.w),Dimensions.margin_32 + 18),
          left: max((context.screenSize.width/5) - scrollOffset*0.95,Dimensions.margin_64 + Dimensions.profileMinSize + 2* Dimensions.margin_64 - 20),
          child: Center(
            child:  RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: 'A',
                                style: context.textTheme.displayMedium?.copyWith(
                                  fontSize: max(64 -  scrollOffset / 5,21).sp,
                                    color: context.appColorScheme.headlineSecondaryColor)),
                            TextSpan(
                                text: ' Mobile ',
                                style: context.textTheme.displayMedium?.copyWith(
                                    fontSize: max(64 -  scrollOffset / 5,21).sp,
                                    color: context.appColorScheme.headlinePrimaryColor)),
                            TextSpan(
                                text: 'Developer',
                                style: context.textTheme.displayMedium?.copyWith(
                                    fontSize: max(64 -  scrollOffset / 5,21).sp,
                                    color: context.appColorScheme.headlineSecondaryColor)),
                          ])),)
          ),
          Positioned(
          top: max(context.screenSize.height/5.sp- (scrollOffset*1.3)+(1.9 * Dimensions.profileSize.w),Dimensions.margin_32 + 18),
          left: max((context.screenSize.width/5) + scrollOffset/5,Dimensions.margin_64 + Dimensions.profileMinSize +  Dimensions.margin_64 ),
          child: Center(
            child:
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'Elevating',
                    style: context.textTheme.displayMedium?.copyWith(
                        fontSize: max(64 -  scrollOffset / 5,21).sp,
                        color: context.appColorScheme.headlineSecondaryColor)),
                TextSpan(
                    text: ' Mobile Dreams ',
                    style: context.textTheme.displayMedium?.copyWith(
                        fontSize: max(64 -  scrollOffset / 5,21).sp,
                        color: context.appColorScheme.headlinePrimaryColor)),
                TextSpan(
                    text: 'into',
                    style: context.textTheme.displayMedium?.copyWith(
                        fontSize: max(64 -  scrollOffset / 5,21).sp,
                        color: context.appColorScheme.headlineSecondaryColor)),
                TextSpan(
                    text: ' Reality ',
                    style: context.textTheme.displayMedium?.copyWith(
                        fontSize: max(64 -  scrollOffset / 5,21).sp,
                        color: context.appColorScheme.headlinePrimaryColor)),
              ])),
          )),
        ],
      ),
    );
    // return Stack(
    //   children: [
    //     Positioned(
    //       top: max(Dimensions.margin_16,context.screenSize.height/4-scrollOffset/3),
    //         left: max(Dimensions.margin_16,
    //             max(context.screenSize.width / 2 - (scrollOffset*1.5),0)),
    //         child: Container(
    //           height: min(
    //             Dimensions.profileSize.w,
    //             max(Dimensions.profileSize.w - scrollOffset,
    //                 Dimensions.profileMinSize),
    //           ),
    //           width: min(
    //             Dimensions.profileSize.w,
    //             max(Dimensions.profileSize.w - scrollOffset,
    //                 Dimensions.profileMinSize),
    //           ),
    //           decoration: BoxDecoration(
    //               shape: BoxShape.circle,
    //               color: context.appColorScheme.profileBackgroundColor),
    //           child: ClipRRect(
    //             borderRadius: BorderRadius.circular(1000),
    //             child: CachedNetworkImage(
    //               imageUrl: 'profile'.toJpgImageUrl,
    //               fit: BoxFit.cover,
    //             ),
    //           ),
    //         )),
    //     Positioned(child:  ,
    //                     // Dimensions.marginVertical_16,
    //                     // RichText(
    //                     //     text: TextSpan(children: [
    //                     //   TextSpan(
    //                     //       text: 'A',
    //                     //       style: context.textTheme.displayMedium?.copyWith(
    //                     //           color: context.appColorScheme.headlineSecondaryColor)),
    //                     //   TextSpan(
    //                     //       text: ' Mobile ',
    //                     //       style: context.textTheme.displayMedium?.copyWith(
    //                     //           color: context.appColorScheme.headlinePrimaryColor)),
    //                     //   TextSpan(
    //                     //       text: 'Developer',
    //                     //       style: context.textTheme.displayMedium?.copyWith(
    //                     //           color: context.appColorScheme.headlineSecondaryColor)),
    //                     // ])),)
    //
    //   ],
    // );
    // // return Column(
    // //   crossAxisAlignment: CrossAxisAlignment.start,
    // //   mainAxisSize: MainAxisSize.min,
    // //   children: [
    // //     Row(
    // //       mainAxisSize: MainAxisSize.min,
    // //       children: [
    // //         Column(
    // //           mainAxisSize: MainAxisSize.min,
    // //           crossAxisAlignment: CrossAxisAlignment.start,
    // //           children: [
    // //
    // //           ],
    // //         ),
    // //         Dimensions.marginHorizontal_64,
    // //         Container(
    // //           height: Dimensions.profileSize.w,
    // //           width: Dimensions.profileSize.w,
    // //           decoration: BoxDecoration(
    // //             shape: BoxShape.circle,
    // //             color: context.appColorScheme.profileBackgroundColor
    // //           ),
    // //           child: ClipRRect(
    // //             borderRadius: BorderRadius.circular(1000),
    // //             child: CachedNetworkImage(imageUrl: 'profile'.toJpgImageUrl,fit: BoxFit.cover,),
    // //           ),
    // //         )
    // //       ],
    // //     ),
    // //     Dimensions.marginVertical_16,
    // //     RichText(
    // //         text: TextSpan(children: [
    // //       TextSpan(
    // //           text: 'Elevating',
    // //           style: context.textTheme.displayMedium?.copyWith(
    // //               color: context.appColorScheme.headlineSecondaryColor)),
    // //       TextSpan(
    // //           text: ' Mobile Dreams ',
    // //           style: context.textTheme.displayMedium?.copyWith(
    // //               color: context.appColorScheme.headlinePrimaryColor)),
    // //       TextSpan(
    // //           text: 'into',
    // //           style: context.textTheme.displayMedium?.copyWith(
    // //               color: context.appColorScheme.headlineSecondaryColor)),
    // //       TextSpan(
    // //           text: ' Reality ',
    // //           style: context.textTheme.displayMedium?.copyWith(
    // //               color: context.appColorScheme.headlinePrimaryColor)),
    // //     ])),
    // //   ],
    // // );
  }
}
