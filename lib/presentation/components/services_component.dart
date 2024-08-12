import 'package:flutter/material.dart';
import 'package:portfolio/infrastructure/extensions/context_extensions.dart';
import 'package:portfolio/infrastructure/theme/dimensions.dart';
import 'package:portfolio/presentation/pages/services/model/service_model.dart';

class ServicesComponent extends StatelessWidget {
  final ServiceModel serviceModel;
  const ServicesComponent({super.key,required this.serviceModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: context.appColorScheme.projectsBackgroundColor,
                shape: BoxShape.circle),
          ),
            
        ),
        Dimensions.marginVertical_32,
        Center(child: Text(serviceModel.title,style: context.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),)),
        Dimensions.marginVertical_16,
        Text(serviceModel.description,style: context.textTheme.titleMedium,),
      ],
    );
  }
}
