import 'package:flutter/material.dart';
import 'package:portfolio/presentation/components/responsive_page_component.dart';
import 'package:portfolio/presentation/pages/home/home_page.dart';

class HomePageProvider extends StatelessWidget {
  const HomePageProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsivePageComponent(
        desktop: const HomePage(),
        mobile: Container(
          color: Colors.orange,
        ),
        tablet: Container(
          color: Colors.green,
        ));
  }
}
