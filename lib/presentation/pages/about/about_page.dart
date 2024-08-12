import 'package:flutter/material.dart';
import 'package:portfolio/infrastructure/extensions/context_extensions.dart';
import 'package:portfolio/infrastructure/theme/dimensions.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimensions.margin_32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About me',
            style: context.textTheme.displaySmall?.copyWith(
                color: context.appColorScheme.headlineSecondaryColor),
          ),
          Dimensions.marginVertical_32,
          Text(''' 
          I’m Vahid Rajabi, a seasoned Mobile Development Expert specializing in Android and Flutter, with over 8 years of experience in Android (Java & Kotlin) and 5 years in Flutter development. My journey began as a self-taught programmer in high school, and since then, I’ve dedicated myself to mastering the craft of mobile development and software engineering.

I pride myself on being more than just a developer—I'm a team-driven leader who actively bridges the gap between mobile, backend, and design teams. My strong grasp of UI/UX principles ensures that every project I contribute to not only meets technical requirements but also delivers an exceptional user experience. Collaboration and clear communication are at the core of my work, enabling cohesive and high-performing teams.

As a Refactoring Specialist, I excel in breathing new life into legacy projects, implementing modern design patterns, and ensuring code is scalable, maintainable, and reliable. My commitment to clean architecture and SOLID principles allows me to build solutions that stand the test of time.

Mentorship is a passion of mine. I believe that sharing knowledge and nurturing the growth of junior developers is crucial—not only for their individual success but also for the long-term success of the company. Through technical articles, one-on-one mentoring, and fostering a culture of continuous learning, I help teams stay at the cutting edge of technology.

Above all, I’m loyal to the companies I work with and committed to delivering quality solutions that drive business success. Whether you need a skilled developer, a strategic architect, or a mentor who cares deeply about team development, I’m here to make a positive impact.
          '''.trim(),style: context.textTheme.titleLarge,),
          Dimensions.marginVertical_64,
        ],

      ),
    );
  }
}
