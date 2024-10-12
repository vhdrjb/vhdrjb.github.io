import 'package:flutter/material.dart';
import 'package:portfolio/infrastructure/extensions/context_extensions.dart';
import 'package:portfolio/presentation/notifier/page_notifier.dart';
import 'package:portfolio/presentation/pages/about/about_page_provider.dart';
import 'package:portfolio/presentation/pages/home/home_delegate.dart';
import 'package:portfolio/presentation/pages/home/home_page_provider.dart';
import 'package:portfolio/presentation/pages/project_summery/project_summery_delegate.dart';
import 'package:portfolio/presentation/pages/services/services_page.dart';
import 'package:portfolio/presentation/pages/services/services_page_provider.dart';
import 'package:scrollview_observer/scrollview_observer.dart';

import '../../../infrastructure/configuration/resolution_config.dart';
import '../project_summery/project_summery_provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late ScrollController _scrollController;
  late ListObserverController _controller;
  late PageNotifier _pageNotifier;
  int? index;
  BuildContext? _homeContext;
  bool _scrollUpdating = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _controller = ListObserverController(controller: _scrollController);
    _pageNotifier = PageNotifier.instance;
    _scrollController.addListener(
      () {
        if (_scrollController.hasClients) {
            _pageNotifier.updateScrollOffset(_scrollController.offset);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    ResolutionConfig.instance.config(context);
    _pageNotifier.updateWidth(context.screenSize.width);
    return Scaffold(
        backgroundColor: context.appColorScheme.surface,
        body: NotificationListener<ScrollNotification>(
          onNotification: (notification) {

            if (notification is ScrollEndNotification) {
              setState(() {
                _scrollUpdating = false;
              });
            }else if (notification is ScrollUpdateNotification) {
              if (_scrollController.offset > 50 && !_scrollUpdating) {
                Future.delayed(Duration.zero).whenComplete(() {
                  _scrollController.animateTo(context.screenSize.height*1.2 , duration: Duration(milliseconds: 300), curve: Curves.easeIn);
                },);
              }
              setState(() {
                _scrollUpdating = true;
              });
            }

            return true;
          },
          child: AbsorbPointer(
            absorbing: _scrollUpdating,
            child: CustomScrollView(
              physics: ClampingScrollPhysics(),
              controller: _scrollController,
              slivers: [
                // SliverPersistentHeader(
                //   delegate: HomeDelegate(
                //       maxHeight: context.screenSize.height,
                //       scrollNotifier: _pageNotifier.listen(0)),
                //   pinned: true,
                // ),
                SliverPersistentHeader(
                  delegate: ProjectSummeryDelegate(
                    maxHeight: context.screenSize.height*2,
                    scrollNotifier: _pageNotifier.listen(1),
                  ),
                  pinned: true,
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    childCount: 3,
                    (context, index) {
                      if (index == 0) return const ProjectSummeryProvider();
                      if (index == 1) return const ServicesPageProvider();
                      if (index == 2) return const AboutPageProvider();
                      return Container();
                    },
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
