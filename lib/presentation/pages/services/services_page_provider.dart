import 'package:flutter/material.dart';
import 'package:portfolio/presentation/components/responsive_page_component.dart';
import 'package:portfolio/presentation/pages/services/services_page.dart';

class ServicesPageProvider extends StatelessWidget {
  const ServicesPageProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsivePageComponent(desktop: ServicesPage(), mobile: Container(), tablet: Container());
  }
}
