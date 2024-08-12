import 'package:flutter/material.dart';
import 'package:portfolio/presentation/components/responsive_page_component.dart';
import 'package:portfolio/presentation/pages/about/about_page.dart';

class AboutPageProvider extends StatelessWidget {
  const AboutPageProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsivePageComponent(desktop: AboutPage(), mobile: Container(), tablet: Container());
  }
}
