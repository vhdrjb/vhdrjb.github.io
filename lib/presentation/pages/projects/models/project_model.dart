import 'package:flutter/material.dart';

class ProjectModel {
  final String title;
  final String id;
  final String description;
  final List<String> tags;
  final String? company;
  final String? companyIcon;
  final String image;

  const ProjectModel._({
    required this.title,
    this.company,
    this.companyIcon,
    required this.id,
    required this.description,
    required this.tags,
    required this.image,
  });

  factory ProjectModel._wallito() {
    return const ProjectModel._(
        id: 'wallito',
        title: 'Wallito',
        company: 'Raman',
        companyIcon: 'raman',
        description:
            '''Wallito is a comprehensive e-wallet solution designed to simplify financial transactions. Users can effortlessly send money to other Wallito users and make payments by scanning QR codes. The app offers a full suite of fintech features, including detailed receipts, transaction history, and contact management, ensuring a seamless and efficient digital payment experience.''',
        tags: [
          'Flutter',
          'Web',
          'Clean Architecture',
          'FinTech',
          'Dependency Injection',
          'Google Material Design',
          'Git',
          'BLoC',
          'Unit Test'
              'Gitlab',
          'SOLID Design Principle',
          'Clean Coding',
        ],
        image: 'wallito');
  }

  factory ProjectModel._your() {
    return const ProjectModel._(
        id: '',
        title: 'Your Project',
        description:
            '''Imagine your project showcased here, leveraging advanced mobile app development skills, seamless UI/UX design, and robust backend integration. Whether it's a cutting-edge fintech app, a comprehensive IoT solution, or an innovative personal finance manager, this space is ready to bring your vision to life. Let us help you create something extraordinary that stands out in the market.
    ''',
        tags: ['Clean Architecture', 'Maintainable', 'Scalable', 'Reliable'],
        image: 'adv_summery');
  }

  factory ProjectModel._unicom() {
    return const ProjectModel._(
        id: 'unicom',
        company: 'Raman',
        companyIcon: 'raman',
        title: 'Unicom',
        description:
            '''Unicom is a Flutter-based communication platform designed to enhance interaction between universities and students. It provides essential contacts, demand forms, information about the university, rules, events, and integrated student and university calendars. Unicom streamlines access to crucial information, fostering a more connected and informed university community.''',
        tags: [
          'Flutter',
          'Clean Architecture',
          'Dependency Injection',
          'Google Material Design',
          'Git',
          'Gitlab',
          'SOLID Design Principle',
          'Clean Coding',
        ],
        image: 'unicom');
  }

  factory ProjectModel._poshtibanYar() {
    return const ProjectModel._(
        id: 'poshtiban_yar',
        company: 'Farazpardazan',
        companyIcon: 'farazpardazan',
        title: 'Poshtiban Yar',
        description:
            '''Poshtiban Yar is an Android application designed to support POS-device management. It allows users to submit the status of POS devices and locate assigned devices on a map. The app utilizes the camera to capture pictures of devices and provides a map interface to show device locations. Additionally, Poshtiban Yar includes features for marketing and finding new customers, enabling users to expand their client base efficiently.
            ''',
        tags: [
          'Android',
          'Kotlin'
              'Fintech',
          'Code Refactoring',
          'Clean architecture',
          'Git',
          'Gitlab',
          'MvvM',
          'Unit Test',
          'Jetpack Components'
              'Dependency Injection'
        ],
        image: 'poshtiban_yar');
  }

  factory ProjectModel._polarisVpn() {
    return const ProjectModel._(
        id: 'polaris_vpn',
        companyIcon: 'farazpardazan',
        company: 'Farazpardazan',
        title: 'Polaris VPN',
        description:
            '''Polaris is an advanced Android application implementing the OpenVPN project to deliver secure and reliable connections. It ensures users' online activities remain private and protected. Polaris also integrates seamlessly with Google Pay, offering a convenient and secure payment method within the app. Additionally, it includes robust accounting management features, providing users with comprehensive tools to manage and track their finances efficiently.
            ''',
        tags: [
          'Android',
          'Kotlin',
          'Google Pay',
          'OpenVPN',
          'Git',
          'Gitlab',
          'Refactoring'
        ],
        image: 'polaris');
  }

  factory ProjectModel._put() {
    return const ProjectModel._(
        id: 'put_mobile_banking',
        companyIcon: 'farazpardazan',
        company: 'Farazpardazan',
        title: 'PUT Mobile Banking',
        description:
            '''PUT Mobile Application is a comprehensive Android-based mobile banking solution tailored to cater to a variety of financial needs. The app allows users to effortlessly top up their credit SIM cards, purchase internet packages, and transfer money between accounts. It also provides convenient options for paying utility bills, contributing to charitable causes, and managing car and highway toll payments.

In addition to its robust banking features, PUT includes a digital wallet for easy money management, supports multiple languages and themes to enhance user experience, and offers detailed access to recent transactions for better financial tracking. The app also maintains a contacts feature for quick and easy transfers. PUT Mobile Application is designed to provide a seamless and secure banking experience, making it a go-to app for personal finance management on the go.
            ''',
        tags: [
          'Android',
          'Fintech',
          'Clean architecture',
          'MvvM',
          'Unit Test',
          'Clean Coding',
          'Team Leadership',
          'Code Review'
              'Dependency Injection'
        ],
        image: 'put');
  }

  factory ProjectModel._mihanDrive() {
    return const ProjectModel._(
        id: 'mihan_drive',
        company: 'Raiandish Shargh',
        title: 'Mihan Drive',
        description:
            '''MihanDrive is a native application available on both Android and iOS platforms, designed as a comprehensive cloud file storage solution akin to OwnCloud. The app allows users to securely store, sync, and share files in the cloud. In addition to its robust file storage capabilities, MihanDrive includes integrated calendar and contact management features, providing users with a seamless experience for organizing their schedules and maintaining their contacts. With MihanDrive, users can enjoy all the functionalities of OwnCloud, along with enhanced tools for personal and professional productivity.
            ''',
        tags: ['Android', 'iOS', 'Java', 'Swift', 'Cloud Storage', 'WebDAV'],
        image: 'wallito/cover');
  }

  factory ProjectModel._kidora() {
    return const ProjectModel._(
        id: 'kidora',
        company: 'Farazpardazan',
        companyIcon: 'farazpardazan',
        title: 'Kidora',
        description:
            '''Kidora is a comprehensive Flutter-based baby care application tailored for children under 5 years. The app integrates gamification to create engaging activities for parents to enjoy with their child while monitoring and assessing their mental health. Kidora offers valuable resources, including articles and interactive charts, to track and visualize the child's mental growth and identify potential concerns. Additionally, it allows parents to record and review daily activities, providing a holistic view of their child's development and well-being.
            ''',
        tags: [
          'Flutter',
          'Clean architecture',
          'BLoC',
          'Unit Test',
          'Dependency Injection'
        ],
        image: 'kidora');
  }

  factory ProjectModel._hamraz() {
    return const ProjectModel._(
        id: 'hamraz',
        company: 'Farazpardazan',
        companyIcon: 'farazpardazan',
        title: 'Hamraz',
        description:
            '''Providing suitable services on mobile platforms is a key differentiator for organizations in the eyes of their customers. In line with this, Razi Insurance Company has designed and implemented the Ham-Raz application to enhance customer satisfaction. This app offers a range of services, including viewing a list of customer insurance policies, querying insurance premiums, issuing new insurance policies, finding the nearest medical centers, agencies, and branches, and requesting assistance in the event of a claim.
            ''',
        tags: ['Android', 'Java', 'Dependency Injection'],
        image: 'wallito/cover');
  }

  factory ProjectModel._fanoos() {
    return const ProjectModel._(
        id: 'fanoos',
        company: 'Farazpardazan',
        title: 'Fanoos',
        companyIcon: 'farazpardazan',
        description:
            '''Fanoos is an Android application designed for personal financial management, rapidly growing with over 500,000 users. This PFM (Personal Financial Management) app helps users improve their financial balance, create and maintain budgets, and automatically track income and expenditures. Fanoos also provides educational resources to help users learn how to invest, making it an essential tool for anyone looking to enhance their financial well-being.
            ''',
        tags: [
          'Android',
          'Java',
          'Kotlin',
          'Fintech',
          'Refactoring',
          'Team leadership',
          'Code Review',
          'Clean architecture',
          'Unit Test',
          'Dependency Injection'
        ],
        image: 'fanoos');
  }

  factory ProjectModel._damapa() {
    return const ProjectModel._(
        id: 'damapa',
        title: 'Damapa',
        company: 'Raman',
        companyIcon: 'raman',
        description:
            '''Damapa is an IoT mobile application designed for controlling rice dryer devices. It allows users to remotely monitor and adjust temperature, drying times, and moisture levels, ensuring optimal drying conditions. With real-time updates and secure communication, Damapa offers a convenient and efficient solution for managing rice drying operations.
            ''',
        tags: [
          'Flutter',
          'IoT'
              'Clean architecture',
          'BLoC',
          'SSE'
              'Dependency Injection'
        ],
        image: 'damapa');
  }

  factory ProjectModel._clusterixTimeTracker() {
    return const ProjectModel._(
        id: 'clusterix_time_tracker',
        company: 'Innoscripta AG',
        companyIcon: 'innos',
        title: 'Clusterix Time Tracker',
        description:
            '''Introducing innOS, the top task management tool that can boost your productivity and enable you to handle your duties in a more effective manner than ever. You can simply keep track of the time you spend on various chores with innOS and manage your to-do list with ease.

This program has you covered whether you want to use it anonymously or choose to create an innOS account to link your user profile, time tracking, task management, and other functions together. You can manually enter task names and precisely track your progress using the input feature.

The robust task management app innOS gives you all the resources you require to increase productivity and maintain organization.
            ''',
        tags: [
          'Flutter',
          'Clean architecture',
          'BLoC',
          'Realtime',
          'Geofencing',
          'GPS'
              'Unit Test',
          'Dependency Injection'
        ],
        image: 'clusterix_time_tracker');
  }

  factory ProjectModel._clusterixLiveChat() {
    return const ProjectModel._(
        id: 'clusterix_livechat',
        company: 'Innoscripta AG',
        companyIcon: 'innos',
        title: 'Clusterix Live Chat',
        description:
            '''Instant Messaging: Live Chat provides a platform for instant, real-time messaging, ensuring that your team can communicate quickly and efficiently. Whether it's a quick question or a detailed discussion, conversations flow seamlessly.

Group Channels: Organize your communications with dedicated channels. Create groups for different departments, project teams, or any specific topic. This feature keeps conversations focused and easily accessible.

File Sharing: Share documents, images, and other files instantly within the chat. This seamless integration of file sharing enhances collaboration, making it easier to discuss and work on documents together.

Task Management: Integrate task management within your chats. Assign tasks, set deadlines, and track progress directly through Live Chat. This feature helps in keeping everyone aligned and informed about their responsibilities.
        ''',
        tags: [
          'Flutter',
          'Clean architecture',
          'Realtime'
              'BLoC',
          'Refactoring'
              'Unit Test',
          'Dependency Injection'
        ],
        image: 'clusterix_livechat');
  }

  factory ProjectModel._clusterixEmail() {
    return const ProjectModel._(
        id: 'clusterix_email',
        company: 'Innoscripta AG',
        companyIcon: 'innos',
        title: 'Clusterix Email',
        description:
            '''InnOS Email: Revolutionize Your Email Experience with Advanced Features

Discover the future of emailing with InnOS Email, your ultimate email solution designed for efficiency and ease. Our innovative platform includes a range of cutting-edge features:

Signature Editor: Create and customize your unique email signatures, adding a professional touch to every email you send.

Email Editor: Craft your messages with ease using our intuitive email editor. Whether it's a quick reply or a detailed report, our editor makes writing emails a breeze.

Templates: Save time with our diverse range of customizable templates. From business proposals to friendly greetings, you'll find the perfect template for every occasion.

AI Assistant: Harness the power of artificial intelligence to enhance your email experience. Our AI assistant helps with composing emails, suggesting responses, and managing your inbox efficiently.

Scheduled Email: Plan and schedule your emails to be sent at the perfect time, ensuring you never miss an important date or event.

Email View: Experience seamless email viewing with our user-friendly interface. Easily navigate through your inbox, organize emails, and focus on what matters most.

InnOS Email is more than just an email client; it's a comprehensive tool designed to optimize your communication and productivity. Join us and elevate your email experience to new heights!
    ''',
        tags: [
          'Flutter',
          'Clean architecture',
          'BLoC',
          'Realtime',
          'Calendar',
          'Refactoring'
              'Unit Test',
          'Dependency Injection'
        ],
        image: 'clusterix_email');
  }
}

class ProjectsDataProvider {
  static ProjectsDataProvider? _instance;

  static ProjectsDataProvider get instance {
    _instance ??= ProjectsDataProvider._();
    return _instance!;
  }

  ProjectsDataProvider._();

  Iterable<ProjectModel> get models {
    return [
      ProjectModel._wallito(),
      ProjectModel._clusterixTimeTracker(),
      ProjectModel._damapa(),
      ProjectModel._put(),
      ProjectModel._clusterixLiveChat(),
      ProjectModel._unicom(),
      ProjectModel._fanoos(),
      ProjectModel._clusterixEmail(),
      ProjectModel._polarisVpn(),
      ProjectModel._poshtibanYar(),
      ProjectModel._kidora(),
      ProjectModel._mihanDrive(),
      ProjectModel._hamraz()
    ];
  }

  Iterable<ProjectModel> get summeryModel {
    return [
      ProjectModel._wallito(),
      ProjectModel._clusterixTimeTracker(),
      ProjectModel._put(),
      ProjectModel._your(),
    ];
  }

  ProjectModel findById(String id) {
    return models.firstWhere(
      (element) => element.id == id,
    );
  }
}
