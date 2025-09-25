// import 'package:flutter/material.dart';
// import '../widgets/header.dart';
// import '../widgets/hero_section.dart';
// import '../widgets/services_section.dart';
// import '../widgets/portfolio_section.dart';
// import '../widgets/about_section.dart';
// import '../widgets/testimonials_section.dart';
// import '../widgets/contact_section.dart';
// import '../widgets/footer.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   final ScrollController _scrollController = ScrollController();
//   final GlobalKey _homeKey = GlobalKey();
//   final GlobalKey _servicesKey = GlobalKey();
//   final GlobalKey _portfolioKey = GlobalKey();
//   final GlobalKey _aboutKey = GlobalKey();
//   final GlobalKey _testimonialsKey = GlobalKey();
//   final GlobalKey _contactKey = GlobalKey();

//   void _scrollToSection(GlobalKey key) {
//     final context = key.currentContext;
//     if (context != null) {
//       Scrollable.ensureVisible(
//         context,
//         duration: const Duration(milliseconds: 800),
//         curve: Curves.easeInOut,
//       );
//     }
//   }

//   void _launchGetStarted() {
//     _scrollToSection(_contactKey);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         controller: _scrollController,
//         child: Column(
//           children: [
//             Header(
//               onHomeTap: () => _scrollToSection(_homeKey),
//               onServicesTap: () => _scrollToSection(_servicesKey),
//               onPortfolioTap: () => _scrollToSection(_portfolioKey),
//               onAboutTap: () => _scrollToSection(_aboutKey),
//               onContactTap: () => _scrollToSection(_contactKey),
//               onGetStartedTap: _launchGetStarted,
//             ),
//             HeroSection(
//               key: _homeKey,
//               onGetStartedTap: _launchGetStarted,
//               servicesKey: _servicesKey,
//             ),
//             ServicesSection(key: _servicesKey),
//             PortfolioSection(key: _portfolioKey),
//             AboutSection(key: _aboutKey, contactKey: _contactKey),
//             TestimonialsSection(key: _testimonialsKey),
//             ContactSection(key: _contactKey),
//             Footer(
//               homeKey: _homeKey,
//               servicesKey: _servicesKey,
//               portfolioKey: _portfolioKey,
//               aboutKey: _aboutKey,
//               contactKey: _contactKey,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import '../widgets/header.dart';
import '../widgets/hero_section.dart';
import '../widgets/services_section.dart';
import '../widgets/portfolio_section.dart';
import '../widgets/about_section.dart';
import '../widgets/team_section.dart';
import '../widgets/testimonials_section.dart';
import '../widgets/contact_section.dart';
import '../widgets/footer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _servicesKey = GlobalKey();
  final GlobalKey _portfolioKey = GlobalKey();
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _teamKey = GlobalKey();
  final GlobalKey _testimonialsKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOut,
      );
    }
  }

  void _launchGetStarted() {
    _scrollToSection(_contactKey);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Header(
              onHomeTap: () => _scrollToSection(_homeKey),
              onServicesTap: () => _scrollToSection(_servicesKey),
              onPortfolioTap: () => _scrollToSection(_portfolioKey),
              onAboutTap: () => _scrollToSection(_aboutKey),
              onTeamTap: () => _scrollToSection(_teamKey),
              onContactTap: () => _scrollToSection(_contactKey),
              onGetStartedTap: _launchGetStarted,
            ),
            HeroSection(
              key: _homeKey,
              onGetStartedTap: _launchGetStarted,
              servicesKey: _servicesKey,
            ),
            ServicesSection(key: _servicesKey),
            PortfolioSection(key: _portfolioKey),
            AboutSection(key: _aboutKey, contactKey: _contactKey),
            TeamSection(key: _teamKey),
            TestimonialsSection(key: _testimonialsKey),
            ContactSection(key: _contactKey),
            Footer(
              homeKey: _homeKey,
              servicesKey: _servicesKey,
              portfolioKey: _portfolioKey,
              aboutKey: _aboutKey,
              teamKey: _teamKey,
              contactKey: _contactKey,
            ),
          ],
        ),
      ),
    );
  }
}
