import 'package:flutter/material.dart';
import 'package:portfolio/infrastructure/extensions/context_extensions.dart';
import 'package:portfolio/infrastructure/theme/dimensions.dart';
import 'package:portfolio/presentation/components/services_component.dart';
import 'package:portfolio/presentation/pages/services/model/service_model.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimensions.margin_32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Services',
            style: context.textTheme.displaySmall?.copyWith(
                color: context.appColorScheme.headlineSecondaryColor),
          ),
          Dimensions.marginVertical_64,
          GridView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              childAspectRatio: 2 / 1,
              crossAxisSpacing: Dimensions.margin_16,
              mainAxisSpacing: Dimensions.margin_32,
              maxCrossAxisExtent: context.screenSize.width / 3,
            ),
            children: [
              ...ServiceDataProvider.instance.models.map(
                (e) => ServicesComponent(serviceModel: e),
              )
            ],
          )
        ],
      ),
    );
  }
}
