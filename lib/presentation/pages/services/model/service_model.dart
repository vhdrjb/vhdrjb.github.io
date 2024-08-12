class ServiceModel {
  final String title;
  final String description;

  const ServiceModel({
    required this.title,
    required this.description,
  });
}

class ServiceDataProvider {
  static ServiceDataProvider? _instance;

  static ServiceDataProvider get instance {
    _instance ??= ServiceDataProvider._();
    return _instance!;
  }

  ServiceDataProvider._();

  Iterable<ServiceModel> get models {
    return [
      ServiceModel(title: 'Maintainable', description: '''
      Investing in high-quality mobile applications means ensuring long-term stability and ease of updates. I design apps with clean, modular code that simplifies future enhancements and bug fixes. This approach ensures that your app remains reliable and adaptable as your business evolves
      '''),
      ServiceModel(title: 'Mentoring and Team Leadership', description: '''
      I provide hands-on mentoring and leadership to guide teams through complex projects. By sharing expertise and offering strategic direction, I help develop team skills, streamline workflows, and drive collective success, ensuring a cohesive and effective development process.
      '''),
      ServiceModel(title: 'Reliable Solutions', description: '''
      I prioritize building robust applications that perform consistently across different devices and environments. By focusing on thorough testing and high-quality standards, I deliver solutions that minimize downtime and ensure a smooth user experience, fostering trust and satisfaction with your product.
      '''),
      ServiceModel(title: 'Scalable Solutions', description: '''
      I create applications with a design that anticipates growth and future needs. This approach ensures that your app can handle increased usage and feature expansions smoothly, supporting your vision as your project evolves and gains traction.
      '''),
      ServiceModel(title: 'Refactoring Legacy Code', description: '''
      I specialize in transforming and modernizing existing codebases to enhance performance and maintainability. This process streamlines development, reduces technical debt, and improves overall project efficiency, leading to a smoother development cycle and more manageable updates.
      '''),
      ServiceModel(title: 'Technical Writing', description: '''
      I produce comprehensive technical documentation and articles that clarify complex concepts and guide development processes. This not only supports your team with clear, actionable insights but also contributes to the growth and skill development of junior developers.
      '''),
      ServiceModel(title: 'Knowledge Sharing', description: '''
      I actively engage in knowledge sharing to empower teams and foster growth. By providing valuable insights and guidance, I help bridge gaps in understanding and enhance the overall skill set within your organization, ensuring everyone benefits from a richer knowledge base.
      '''),
      ServiceModel(title: 'Code Review', description: '''
      I offer detailed and constructive code reviews to ensure high-quality standards and best practices. This process enhances code quality, identifies potential issues early, and fosters a culture of continuous improvement, resulting in more reliable and maintainable software.
      '''),
    ];
  }
}
