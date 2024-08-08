import 'package:flutter/material.dart';
import 'package:portfolio/infrastructure/extensions/context_extensions.dart';
import 'package:portfolio/infrastructure/extensions/string_extensions.dart';

class ProjectCompanyComponent extends StatelessWidget {
  final String companyName;
  final String? companyIcon;
  const ProjectCompanyComponent({super.key,required this.companyName,this.companyIcon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(image:(companyIcon ?? 'default_company').toJpgImage,height: 50,width: 50,),
        Text('Associated with '),
        Text(companyName,style: context.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),)
      ],
    );
  }
}
