// import 'package:flutter/material.dart';

// class ServicesSection extends StatelessWidget {
//   const ServicesSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
//       child: Column(
//         children: [
//           Text(
//             'Our Services',
//             style: TextStyle(
//               fontSize: 36,
//               fontWeight: FontWeight.bold,
//               color: Color(0xFF2563EB),
//             ),
//           ),
//           const SizedBox(height: 10),
//           Text(
//             'Comprehensive digital marketing solutions for your business',
//             style: TextStyle(fontSize: 18, color: Colors.grey[600]),
//           ),
//           const SizedBox(height: 50),
//           Row(
//             children: [
//               _ServiceCard(
//                 imageUrl:
//                     'https://raw.githubusercontent.com/subin1511/Digaxion/main/assets/icons/seo.png',
//                 title: 'SEO Optimization',
//                 description:
//                     'Improve your search engine rankings and drive organic traffic to your website.',
//               ),
//               _ServiceCard(
//                 imageUrl:
//                     'https://raw.githubusercontent.com/subin1511/Digaxion/main/assets/icons/advertising.png',
//                 title: 'PPC Advertising',
//                 description:
//                     'Targeted advertising campaigns that deliver maximum ROI for your business.',
//               ),
//               _ServiceCard(
//                 imageUrl:
//                     'https://raw.githubusercontent.com/subin1511/Digaxion/main/assets/icons/megaphone.png',
//                 title: 'Social Media Marketing',
//                 description:
//                     'Engage your audience and build brand presence across social platforms.',
//               ),
//             ],
//           ),
//           const SizedBox(height: 30),
//           Row(
//             children: [
//               _ServiceCard(
//                 imageUrl:
//                     'https://raw.githubusercontent.com/subin1511/Digaxion/main/assets/icons/copy-writing.png',
//                 title: 'Content Marketing',
//                 description:
//                     'Create compelling content that resonates with your target audience.',
//               ),
//               _ServiceCard(
//                 imageUrl:
//                     'https://raw.githubusercontent.com/subin1511/Digaxion/main/assets/icons/gmail.png',
//                 title: 'Email Marketing',
//                 description:
//                     'Nurture leads and build customer relationships through strategic email campaigns.',
//               ),
//               _ServiceCard(
//                 imageUrl:
//                     'https://raw.githubusercontent.com/subin1511/Digaxion/main/assets/icons/seo-report.png',
//                 title: 'Analytics & Reporting',
//                 description:
//                     'Data-driven insights to measure performance and optimize your strategy.',
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class _ServiceCard extends StatelessWidget {
//   final String imageUrl;
//   final String title;
//   final String description;

//   const _ServiceCard({
//     required this.imageUrl,
//     required this.title,
//     required this.description,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Container(
//         margin: const EdgeInsets.all(10),
//         padding: const EdgeInsets.all(30),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(15),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black12,
//               blurRadius: 10,
//               offset: Offset(0, 4),
//             ),
//           ],
//         ),
//         child: Column(
//           children: [
//             Container(
//               width: 80,
//               height: 80,
//               padding: const EdgeInsets.all(15),
//               decoration: BoxDecoration(
//                 color: Color(0xFF2563EB).withOpacity(0.1),
//                 borderRadius: BorderRadius.circular(40),
//               ),
//               child: Image.network(
//                 imageUrl,
//                 fit: BoxFit.contain,
//                 errorBuilder: (context, error, stackTrace) {
//                   return Icon(
//                     Icons.image_not_supported_outlined,
//                     color: Color(0xFF2563EB),
//                     size: 40,
//                   );
//                 },
//                 loadingBuilder: (context, child, loadingProgress) {
//                   if (loadingProgress == null) return child;
//                   return CircularProgressIndicator(
//                     value: loadingProgress.expectedTotalBytes != null
//                         ? loadingProgress.cumulativeBytesLoaded /
//                               loadingProgress.expectedTotalBytes!
//                         : null,
//                     color: Color(0xFF2563EB),
//                   );
//                 },
//               ),
//             ),
//             const SizedBox(height: 20),
//             Text(
//               title,
//               style: TextStyle(
//                 fontSize: 22,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black87,
//               ),
//             ),
//             const SizedBox(height: 15),
//             Text(
//               description,
//               textAlign: TextAlign.center,
//               style: TextStyle(color: Colors.grey[600], height: 1.5),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      child: Column(
        children: [
          Text(
            'Our Services',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2563EB),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Comprehensive digital marketing solutions for your business',
            style: TextStyle(fontSize: 18, color: Colors.grey[600]),
          ),
          const SizedBox(height: 50),
          Row(
            children: [
              _ServiceCard(
                imageUrl:
                    'https://raw.githubusercontent.com/subin1511/Digaxion/main/seo.png',
                title: 'SEO Optimization',
                description:
                    'Improve your search engine rankings and drive organic traffic to your website.',
              ),
              _ServiceCard(
                imageUrl:
                    'https://raw.githubusercontent.com/subin1511/Digaxion/main/advertising.png',
                title: 'PPC Advertising',
                description:
                    'Targeted advertising campaigns that deliver maximum ROI for your business.',
              ),
              _ServiceCard(
                imageUrl:
                    'https://raw.githubusercontent.com/subin1511/Digaxion/main/megaphone.png',
                title: 'Social Media Marketing',
                description:
                    'Engage your audience and build brand presence across social platforms.',
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              _ServiceCard(
                imageUrl:
                    'https://raw.githubusercontent.com/subin1511/Digaxion/main/copy-writing.png',
                title: 'Content Marketing',
                description:
                    'Create compelling content that resonates with your target audience.',
              ),
              _ServiceCard(
                imageUrl:
                    'https://raw.githubusercontent.com/subin1511/Digaxion/main/gmail.png',
                title: 'Email Marketing',
                description:
                    'Nurture leads and build customer relationships through strategic email campaigns.',
              ),
              _ServiceCard(
                imageUrl:
                    'https://raw.githubusercontent.com/subin1511/Digaxion/main/seo-report.png',
                title: 'Analytics & Reporting',
                description:
                    'Data-driven insights to measure performance and optimize your strategy.',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ServiceCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;

  const _ServiceCard({
    required this.imageUrl,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              width: 80,
              height: 80,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xFF2563EB).withOpacity(0.1),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Image.network(
                imageUrl,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return Icon(
                    Icons.image_not_supported_outlined,
                    color: Color(0xFF2563EB),
                    size: 40,
                  );
                },
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                        : null,
                    color: Color(0xFF2563EB),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Text(
              title,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey[600], height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
