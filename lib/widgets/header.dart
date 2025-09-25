// import 'package:flutter/material.dart';

// class Header extends StatefulWidget {
//   final VoidCallback onHomeTap;
//   final VoidCallback onServicesTap;
//   final VoidCallback onPortfolioTap;
//   final VoidCallback onAboutTap;
//   final VoidCallback onTeamTap;
//   final VoidCallback onContactTap;
//   final VoidCallback onGetStartedTap;

//   const Header({
//     super.key,
//     required this.onHomeTap,
//     required this.onServicesTap,
//     required this.onPortfolioTap,
//     required this.onTeamTap,
//     required this.onAboutTap,
//     required this.onContactTap,
//     required this.onGetStartedTap,
//   });

//   @override
//   State<Header> createState() => _HeaderState();
// }

// class _HeaderState extends State<Header> {
//   bool _isMenuOpen = false;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black12,
//             blurRadius: 4,
//             offset: const Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//         child: Row(
//           children: [
//             GestureDetector(
//               onTap: widget.onHomeTap,
//               child: const Text(
//                 'Digaxion',
//                 style: TextStyle(
//                   fontSize: 28,
//                   fontWeight: FontWeight.bold,
//                   color: Color(0xFF2563EB),
//                 ),
//               ),
//             ),
//             const Spacer(),
//             // Desktop Navigation
//             Row(
//               children: [
//                 _NavItem(text: 'Home', onTap: widget.onHomeTap),
//                 _NavItem(text: 'Services', onTap: widget.onServicesTap),
//                 _NavItem(text: 'Portfolio', onTap: widget.onPortfolioTap),
//                 _NavItem(text: 'About', onTap: widget.onAboutTap),
//                 _NavItem(text: 'Contact', onTap: widget.onContactTap),
//               ],
//             ),
//             const Spacer(),
//             // CTA Button
//             ElevatedButton(
//               onPressed: widget.onGetStartedTap,
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: const Color(0xFF2563EB),
//                 foregroundColor: Colors.white,
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 25,
//                   vertical: 12,
//                 ),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(25),
//                 ),
//               ),
//               child: const Text('Get Started'),
//             ),
//             // Mobile Menu Button
//             IconButton(
//               onPressed: () {
//                 setState(() {
//                   _isMenuOpen = !_isMenuOpen;
//                 });
//               },
//               icon: const Icon(Icons.menu),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _NavItem extends StatelessWidget {
//   final String text;
//   final VoidCallback onTap;

//   const _NavItem({required this.text, required this.onTap});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 15),
//       child: TextButton(
//         onPressed: onTap,
//         child: Text(
//           text,
//           style: const TextStyle(
//             color: Colors.black87,
//             fontSize: 16,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  final VoidCallback onHomeTap;
  final VoidCallback onServicesTap;
  final VoidCallback onPortfolioTap;
  final VoidCallback onAboutTap;
  final VoidCallback onTeamTap;
  final VoidCallback onContactTap;
  final VoidCallback onGetStartedTap;

  const Header({
    super.key,
    required this.onHomeTap,
    required this.onServicesTap,
    required this.onPortfolioTap,
    required this.onAboutTap,
    required this.onTeamTap,
    required this.onContactTap,
    required this.onGetStartedTap,
  });

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  bool _isMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Row(
          children: [
            GestureDetector(
              onTap: widget.onHomeTap,
              child: const Text(
                'Digaxion',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2563EB),
                ),
              ),
            ),
            const Spacer(),
            // Desktop Navigation
            Row(
              children: [
                _NavItem(text: 'Home', onTap: widget.onHomeTap),
                _NavItem(text: 'Services', onTap: widget.onServicesTap),
                _NavItem(text: 'Portfolio', onTap: widget.onPortfolioTap),
                _NavItem(text: 'About', onTap: widget.onAboutTap),
                _NavItem(text: 'Our Team', onTap: widget.onTeamTap),
                _NavItem(text: 'Contact', onTap: widget.onContactTap),
              ],
            ),
            const Spacer(),
            // CTA Button
            ElevatedButton(
              onPressed: widget.onGetStartedTap,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF2563EB),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: const Text('Get Started'),
            ),
            // Mobile Menu Button
            IconButton(
              onPressed: () {
                setState(() {
                  _isMenuOpen = !_isMenuOpen;
                });
              },
              icon: const Icon(Icons.menu),
            ),
          ],
        ),
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const _NavItem({required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextButton(
        onPressed: onTap,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
