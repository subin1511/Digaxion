import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatefulWidget {
  final GlobalKey homeKey;
  final GlobalKey servicesKey;
  final GlobalKey portfolioKey;
  final GlobalKey aboutKey;
  final GlobalKey contactKey;
  final GlobalKey teamKey;

  const Footer({
    super.key,
    required this.homeKey,
    required this.servicesKey,
    required this.portfolioKey,
    required this.aboutKey,
    required this.contactKey,
    required this.teamKey,
  });

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  void _scrollToSection(GlobalKey sectionKey) {
    if (sectionKey.currentContext != null) {
      Scrollable.ensureVisible(
        sectionKey.currentContext!,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOut,
      );
    }
  }

  // Function to launch URLs
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Could not launch $url')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF1E293B),
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              // Expanded(
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       const Text(
              //         'Digaxion',
              //         style: TextStyle(
              //           fontSize: 28,
              //           fontWeight: FontWeight.bold,
              //           color: Colors.white,
              //         ),
              //       ),
              //       const SizedBox(height: 20),
              //       Text(
              //         'Transforming businesses through innovative digital marketing strategies. We help you reach your goals and maximize your online potential.',
              //         style: TextStyle(color: Colors.grey[400], height: 1.6),
              //       ),
              //       const SizedBox(height: 20),
              //       Row(
              //         children: [
              //           _SocialImage(
              //             imageUrl:
              //                 'https://raw.githubusercontent.com/subin1511/Digaxion/main/assets/icons/facebook.png',
              //             onTap: () => _launchURL(
              //               'https://www.facebook.com/share/1FiZreC9Nb/',
              //             ),
              //           ),
              //           _SocialImage(
              //             imageUrl:
              //                 'https://raw.githubusercontent.com/subin1511/Digaxion/main/assets/icons/linkedin.png',
              //             onTap: () => _launchURL(
              //               'https://www.linkedin.com/in/digaxion-offl-642b31386',
              //             ),
              //           ),
              //           _SocialImage(
              //             imageUrl:
              //                 'https://raw.githubusercontent.com/subin1511/Digaxion/main/assets/icons/instagram.png',
              //             onTap: () => _launchURL(
              //               'https://www.instagram.com/_digaxion_',
              //             ),
              //           ),
              //           _SocialImage(
              //             imageUrl:
              //                 'https://raw.githubusercontent.com/subin1511/Digaxion/main/assets/icons/twitter.png',
              //             onTap: () =>
              //                 _launchURL('https://x.com/digaxion51914'),
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Digaxion',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Transforming businesses through innovative digital marketing strategies. We help you reach your goals and maximize your online potential.',
                      style: TextStyle(color: Colors.grey[400], height: 1.6),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        _SocialImage(
                          imageUrl:
                              'https://raw.githubusercontent.com/subin1511/Digaxion/main/facebook.png',
                          onTap: () => _launchURL(
                            'https://www.facebook.com/share/1FiZreC9Nb/',
                          ),
                        ),
                        _SocialImage(
                          imageUrl:
                              'https://raw.githubusercontent.com/subin1511/Digaxion/main/linkedin.png',
                          onTap: () => _launchURL(
                            'https://www.linkedin.com/in/digaxion-offl-642b31386',
                          ),
                        ),
                        _SocialImage(
                          imageUrl:
                              'https://raw.githubusercontent.com/subin1511/Digaxion/main/instagram.png',
                          onTap: () => _launchURL(
                            'https://www.instagram.com/_digaxion_',
                          ),
                        ),
                        _SocialImage(
                          imageUrl:
                              'https://raw.githubusercontent.com/subin1511/Digaxion/main/twitter.png',
                          onTap: () =>
                              _launchURL('https://x.com/digaxion51914'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Quick Links',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    _FooterLink(
                      text: 'Home',
                      onTap: () => _scrollToSection(widget.homeKey),
                    ),
                    _FooterLink(
                      text: 'Services',
                      onTap: () => _scrollToSection(widget.servicesKey),
                    ),
                    _FooterLink(
                      text: 'Portfolio',
                      onTap: () => _scrollToSection(widget.portfolioKey),
                    ),
                    _FooterLink(
                      text: 'About Us',
                      onTap: () => _scrollToSection(widget.aboutKey),
                    ),
                    _FooterLink(
                      text: 'Our Team',
                      onTap: () => _scrollToSection(widget.teamKey),
                    ),
                    _FooterLink(
                      text: 'Contact',
                      onTap: () => _scrollToSection(widget.contactKey),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Services',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    _FooterLink(text: 'SEO Optimization'),
                    _FooterLink(text: 'PPC Advertising'),
                    _FooterLink(text: 'Social Media Marketing'),
                    _FooterLink(text: 'Content Marketing'),
                    _FooterLink(text: 'Email Marketing'),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Newsletter',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Subscribe to our newsletter for the latest updates and marketing tips.',
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Your email address',
                              hintStyle: TextStyle(color: Colors.grey[400]),
                              border: const OutlineInputBorder(),
                              filled: true,
                              fillColor: Colors.grey[800],
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Thank you for subscribing!'),
                                backgroundColor: Colors.green,
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF2563EB),
                            foregroundColor: Colors.white,
                          ),
                          child: const Text('Subscribe'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),
          Divider(color: Colors.grey[700]),
          const SizedBox(height: 20),
          Text(
            '© 2024 Digaxion. All rights reserved.',
            style: TextStyle(color: Colors.grey[400]),
          ),
        ],
      ),
    );
  }
}

class _SocialImage extends StatelessWidget {
  final String imageUrl;
  final VoidCallback onTap;

  const _SocialImage({required this.imageUrl, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey[800],
          shape: BoxShape.circle,
        ),
        child: Image.network(
          imageUrl,
          width: 20,
          height: 20,
          fit: BoxFit.contain,
          errorBuilder: (context, error, stackTrace) {
            // Fallback to icons if images fail to load
            IconData fallbackIcon;
            if (imageUrl.contains('facebook')) {
              fallbackIcon = Icons.facebook;
            } else if (imageUrl.contains('linkedin')) {
              fallbackIcon = Icons.link;
            } else if (imageUrl.contains('instagram')) {
              fallbackIcon = Icons.photo_camera;
            } else {
              fallbackIcon = Icons.trending_up;
            }

            return Icon(fallbackIcon, color: Colors.white, size: 20);
          },
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return Container(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                    : null,
              ),
            );
          },
        ),
      ),
    );
  }
}

class _SocialIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _SocialIcon({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey[800],
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: Colors.white, size: 20),
      ),
    );
  }
}

class _FooterLink extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;

  const _FooterLink({required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextButton(
        onPressed: onTap,
        child: Text(text, style: TextStyle(color: Colors.grey[400])),
      ),
    );
  }
}
