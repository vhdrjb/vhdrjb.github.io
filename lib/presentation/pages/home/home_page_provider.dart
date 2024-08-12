import 'package:flutter/material.dart';
import 'package:portfolio/presentation/components/responsive_page_component.dart';
import 'package:portfolio/presentation/notifier/page_notifier.dart';
import 'package:portfolio/presentation/pages/home/home_page.dart';

class HomePageProvider extends StatelessWidget {
  final ScrollController scrollController;
  const HomePageProvider({super.key,required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return ResponsivePageComponent(
        desktop:  HomePage(scrollController: scrollController,),
        mobile: Container(
          color: Colors.orange,
        ),
        tablet: Container(
          color: Colors.green,
        ));
  }
}
