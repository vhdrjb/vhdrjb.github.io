import 'package:flutter/material.dart';
import 'package:portfolio/infrastructure/extensions/context_extensions.dart';
import 'package:portfolio/presentation/notifier/page_notifier.dart';
import 'package:portfolio/presentation/pages/about/about_page_provider.dart';
import 'package:portfolio/presentation/pages/home/home_delegate.dart';
import 'package:portfolio/presentation/pages/home/home_page_provider.dart';
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

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _controller = ListObserverController(controller: _scrollController);
    _pageNotifier = PageNotifier.instance;
    _scrollController.addListener(
      () {
        if (_scrollController.hasClients) {
          if (index != null) {
            _pageNotifier.updateScrollOffset(_scrollController.offset);
          }
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
              print('notification ended $index ${_scrollController.offset}');
              if (index == 0 && _scrollController.offset < 400) {
                print('scrolled');
                _scrollController.animateTo(400, duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
              }
            }
            return true;
          },
          child: ListViewObserver(
            controller: _controller,
            autoTriggerObserveTypes: const [
              ObserverAutoTriggerObserveType.scrollStart
            ],
            onObserve: (p0) {
              final model = p0;
              if (model.visible == true) {
                if (index != model.displayingChildIndexList.last) {
                  index = model.displayingChildIndexList.last;
                  if (index != null) {
                    _pageNotifier.updateCurrentIndex(index!);
                  }
                  _pageNotifier.updateStartScroll(_scrollController.offset);
                }
              }
            },

            child: CustomScrollView(
              controller: _scrollController,
              slivers: [
                SliverPersistentHeader(delegate: HomeDelegate(
                  maxHeight: context.screenSize.height,
                  scrollNotifier: _pageNotifier.listen(0)

                ),pinned: true,),
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
