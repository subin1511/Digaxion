// import 'package:flutter/material.dart';

// class HeroSection extends StatelessWidget {
//   final VoidCallback onGetStartedTap;

//   const HeroSection({super.key, required this.onGetStartedTap});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           colors: [Color(0xFF2563EB), Color(0xFF1D4ED8)],
//         ),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
//         child: Row(
//           children: [
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text(
//                     'Digital Marketing Excellence',
//                     style: TextStyle(
//                       fontSize: 48,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                       height: 1.2,
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   const Text(
//                     'Transform your business with cutting-edge digital marketing strategies. We drive growth, engagement, and results for brands worldwide.',
//                     style: TextStyle(
//                       fontSize: 18,
//                       color: Colors.white70,
//                       height: 1.6,
//                     ),
//                   ),
//                   const SizedBox(height: 30),
//                   Row(
//                     children: [
//                       ElevatedButton(
//                         onPressed: onGetStartedTap,
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.white,
//                           foregroundColor: const Color(0xFF2563EB),
//                           padding: const EdgeInsets.symmetric(
//                             horizontal: 30,
//                             vertical: 15,
//                           ),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(25),
//                           ),
//                         ),
//                         child: const Text(
//                           'Start Your Journey',
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 16,
//                           ),
//                         ),
//                       ),
//                       const SizedBox(width: 20),
//                       OutlinedButton(
//                         onPressed: () {
//                           // Scroll to services section
//                           Scrollable.ensureVisible(
//                             context
//                                 .findAncestorStateOfType<_HomeScreenState>()!
//                                 ._servicesKey
//                                 .currentContext!,
//                             duration: const Duration(milliseconds: 800),
//                             curve: Curves.easeInOut,
//                           );
//                         },
//                         style: OutlinedButton.styleFrom(
//                           foregroundColor: Colors.white,
//                           side: const BorderSide(color: Colors.white),
//                           padding: const EdgeInsets.symmetric(
//                             horizontal: 30,
//                             vertical: 15,
//                           ),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(25),
//                           ),
//                         ),
//                         child: const Text('Learn More'),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 height: 400,
//                 decoration: BoxDecoration(
//                   color: Colors.grey[200],
//                   borderRadius: BorderRadius.circular(20),
//                   image: const DecorationImage(
//                     image: NetworkImage(
//                       'https://via.placeholder.com/600x400/2563EB/FFFFFF?text=Digaxion+Hero+Image',
//                     ),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 // Placeholder for your hero image
//                 child: const Center(
//                   child: Text(
//                     'Your Hero Image Here',
//                     style: TextStyle(color: Colors.grey),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class HeroSection extends StatefulWidget {
  final VoidCallback onGetStartedTap;
  final GlobalKey servicesKey;

  const HeroSection({
    super.key,
    required this.onGetStartedTap,
    required this.servicesKey,
  });

  @override
  State<HeroSection> createState() => _HeroSectionState();
}

class _HeroSectionState extends State<HeroSection> {
  void _scrollToServices() {
    if (widget.servicesKey.currentContext != null) {
      Scrollable.ensureVisible(
        widget.servicesKey.currentContext!,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF2563EB), Color(0xFF1D4ED8)],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Digital Marketing Excellence',
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Transform your business with cutting-edge digital marketing strategies. We drive growth, engagement, and results for brands worldwide.',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white70,
                      height: 1.6,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: widget.onGetStartedTap,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: const Color(0xFF2563EB),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 15,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: const Text(
                          'Start Your Journey',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      OutlinedButton(
                        onPressed: _scrollToServices,
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white,
                          side: const BorderSide(color: Colors.white),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 15,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: const Text('Learn More'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/logo.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
