import 'dart:ui';

import 'package:flutter/material.dart';

class ShadowImage extends StatelessWidget {
  final AssetImage image;
  final double? height;
  final double? width;

  const ShadowImage({super.key, required this.image, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Opacity(
          opacity: 0.2,
          child: Image(
            image: image,
            color: Colors.black87,
            height: height,
            width: width,
          )),
      ClipRect(
          child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Opacity(
                  opacity: 0.3,
                  child: Image(image: image,width: width,height: height,))))
    ]);
  }
}
