import 'package:flutter/material.dart';
import 'package:portfolio/infrastructure/theme/dimensions.dart';
import 'package:portfolio/presentation/components/nav_bar_component.dart';
import 'package:portfolio/presentation/components/social_component.dart';
import 'package:portfolio/presentation/notifier/page_notifier.dart';
import 'package:portfolio/presentation/pages/home/home_delegate.dart';

import '../../notifier/scroll_notifier.dart';
import 'home_body.dart';
import 'home_info.dart';

class HomePage extends StatefulWidget {
  final ScrollController scrollController;
  const HomePage({super.key,required this.scrollController});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ScrollNotifier _scrollNotifier;

  @override
  void initState() {
    super.initState();
    _scrollNotifier = PageNotifier.instance.listen(1);
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      shrinkWrap: true,
      slivers: [
        SliverPersistentHeader(
          delegate: HomeDelegate(scrollNotifier: _scrollNotifier,maxHeight: 0),
          pinned: true,
        ),
      ],
    );
  }
}
