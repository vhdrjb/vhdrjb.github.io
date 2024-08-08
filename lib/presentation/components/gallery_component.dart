import 'dart:async';
import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/infrastructure/extensions/string_extensions.dart';
import 'package:portfolio/infrastructure/theme/dimensions.dart';

class GalleryComponent extends StatefulWidget {
  final String projectId;

  const GalleryComponent({super.key, required this.projectId});

  @override
  State<GalleryComponent> createState() => _GalleryComponentState();
}

class _GalleryComponentState extends State<GalleryComponent> {
  late final ScrollController _scrollController;
  late Timer? _timer;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _startScrolling();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startScrolling() {
    _timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (_scrollController.hasClients) {
        double maxScrollExtent = _scrollController.position.maxScrollExtent;
        double currentScrollPosition = _scrollController.position.pixels;
        double delta = 400.0; // Scroll by 50 pixels each time

        if (currentScrollPosition + delta >= maxScrollExtent) {
          _scrollController.jumpTo(0.0); // Loop back to the start
        } else {
          _scrollController.animateTo(
            currentScrollPosition + delta,
            duration: const Duration(milliseconds: 500),
            curve: Curves.linear,
          );
        }
      }
    });
  }

  Future<Iterable<String>> _loadAssets() async {
    final manifestContent = await rootBundle.loadString('AssetManifest.json');
    final Map<String, dynamic> manifestMap = json.decode(manifestContent);

    final assetPaths = manifestMap.keys
        .where((String key) =>
            key.startsWith('assets/images/projects/${widget.projectId}'))
        .toList();

    return assetPaths.map(
      (e) => e
          .substring('assets/images/projects/'.length, e.length)
          .toNetworkImage,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Iterable<String>>(
      future: _loadAssets(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return SingleChildScrollView(
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...snapshot.data!.map(
                  (e) => Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: Dimensions.margin_64),
                    child: GestureDetector(
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(Dimensions.projectBorders),
                        child: CachedNetworkImage(imageUrl: e),
                      ),
                      onTap: () {
                        _showFullscreenImage(context, e);
                      },
                    ),
                  ),
                )
              ],
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  void _showFullscreenImage(BuildContext context, String imagePath) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.black54,
      // Background color
      transitionDuration: const Duration(milliseconds: 200),
      pageBuilder: (BuildContext context, Animation animation,
          Animation secondaryAnimation) {
        return Center(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Material(
              color: Colors.transparent,
              child: CachedNetworkImage(
                imageUrl: imagePath,
              ),
            ),
          ),
        );
      },
    );
  }
}
