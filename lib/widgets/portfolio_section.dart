// import 'package:flutter/material.dart';

// class PortfolioSection extends StatelessWidget {
//   const PortfolioSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
//       color: Colors.grey[50],
//       child: Column(
//         children: [
//           const Text(
//             'Our Portfolio',
//             style: TextStyle(
//               fontSize: 36,
//               fontWeight: FontWeight.bold,
//               color: Color(0xFF2563EB),
//             ),
//           ),
//           const SizedBox(height: 10),
//           Text(
//             'See how we\'ve helped businesses achieve remarkable results',
//             style: TextStyle(fontSize: 18, color: Colors.grey[600]),
//           ),
//           const SizedBox(height: 50),

//           // Portfolio Grid - Using properly sized landscape images
//           Row(
//             children: [
//               Expanded(
//                 child: _PortfolioItem(
//                   imageUrl:
//                       'https://github.com/subin1511/Digaxion/blob/main/assets/images/image1.jpeg', // Business meeting
//                   title: 'E-commerce Success',
//                   category: 'SEO & Social Media',
//                 ),
//               ),
//               Expanded(
//                 child: _PortfolioItem(
//                   imageUrl:
//                       'https://github.com/subin1511/Digaxion/blob/main/assets/images/image2.jpeg', // Team collaboration
//                   title: 'Brand Launch',
//                   category: 'Full Digital Strategy',
//                 ),
//               ),
//               Expanded(
//                 child: _PortfolioItem(
//                   imageUrl:
//                       'https://github.com/subin1511/Digaxion/blob/main/assets/images/image3.jpeg', // Analytics dashboard
//                   title: 'Lead Generation',
//                   category: 'PPC Campaign',
//                 ),
//               ),
//             ],
//           ),

//           const SizedBox(height: 30),

//           Row(
//             children: [
//               Expanded(
//                 child: _PortfolioItem(
//                   imageUrl:
//                       'https://github.com/subin1511/Digaxion/blob/main/assets/images/image1.jpeg', // Office workspace
//                   title: 'Content Strategy',
//                   category: 'Content Marketing',
//                 ),
//               ),
//               Expanded(
//                 child: _PortfolioItem(
//                   imageUrl:
//                       'https://github.com/subin1511/Digaxion/blob/main/assets/images/image2.jpeg', // Social media marketing
//                   title: 'Social Media Growth',
//                   category: 'Social Media Management',
//                 ),
//               ),
//               Expanded(
//                 child: _PortfolioItem(
//                   imageUrl:
//                       'https://github.com/subin1511/Digaxion/blob/main/assets/images/image3.jpeg', // Email marketing
//                   title: 'Email Campaign',
//                   category: 'Email Marketing',
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class _PortfolioItem extends StatelessWidget {
//   final String imageUrl;
//   final String title;
//   final String category;

//   const _PortfolioItem({
//     required this.imageUrl,
//     required this.title,
//     required this.category,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(15),
//         color: Colors.white,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black12,
//             blurRadius: 8,
//             offset: const Offset(0, 4),
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Image Container with proper sizing
//           Container(
//             height: 200,
//             width: double.infinity,
//             decoration: BoxDecoration(
//               borderRadius: const BorderRadius.vertical(
//                 top: Radius.circular(15),
//               ),
//               color: Colors.grey[200],
//             ),
//             child: ClipRRect(
//               borderRadius: const BorderRadius.vertical(
//                 top: Radius.circular(15),
//               ),
//               child: Image.network(
//                 imageUrl,
//                 fit: BoxFit.cover,
//                 width: double.infinity,
//                 height: double.infinity, // Use available space
//                 loadingBuilder: (context, child, loadingProgress) {
//                   if (loadingProgress == null) return child;
//                   return Container(
//                     color: Colors.grey[300],
//                     child: Center(
//                       child: CircularProgressIndicator(
//                         value: loadingProgress.expectedTotalBytes != null
//                             ? loadingProgress.cumulativeBytesLoaded /
//                                   loadingProgress.expectedTotalBytes!
//                             : null,
//                       ),
//                     ),
//                   );
//                 },
//                 errorBuilder: (context, error, stackTrace) {
//                   return Container(
//                     color: Colors.grey[300],
//                     child: const Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           Icons.business_center,
//                           color: Colors.grey,
//                           size: 50,
//                         ),
//                         SizedBox(height: 10),
//                         Text(
//                           'Portfolio Project',
//                           style: TextStyle(
//                             color: Colors.grey,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ),
//           // Content section
//           Padding(
//             padding: const EdgeInsets.all(20),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: const TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black87,
//                   ),
//                 ),
//                 const SizedBox(height: 5),
//                 Text(
//                   category,
//                   style: const TextStyle(
//                     color: Color(0xFF2563EB),
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      color: Colors.grey[50],
      child: Column(
        children: [
          const Text(
            'Our Portfolio',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2563EB),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'See how we\'ve helped businesses achieve remarkable results',
            style: TextStyle(fontSize: 18, color: Colors.grey[600]),
          ),
          const SizedBox(height: 50),

          // Portfolio Grid - Using raw GitHub URLs
          Row(
            children: [
              Expanded(
                child: _PortfolioItem(
                  imageUrl:
                      'https://raw.githubusercontent.com/subin1511/Digaxion/main/assets/images/image1.jpeg',
                  title: 'E-commerce Success',
                  category: 'SEO & Social Media',
                ),
              ),
              Expanded(
                child: _PortfolioItem(
                  imageUrl:
                      'https://raw.githubusercontent.com/subin1511/Digaxion/main/assets/images/image2.jpeg',
                  title: 'Brand Launch',
                  category: 'Full Digital Strategy',
                ),
              ),
              Expanded(
                child: _PortfolioItem(
                  imageUrl:
                      'https://raw.githubusercontent.com/subin1511/Digaxion/main/assets/images/image3.jpeg',
                  title: 'Lead Generation',
                  category: 'PPC Campaign',
                ),
              ),
            ],
          ),

          const SizedBox(height: 30),

          Row(
            children: [
              Expanded(
                child: _PortfolioItem(
                  imageUrl:
                      'https://raw.githubusercontent.com/subin1511/Digaxion/main/assets/images/image1.jpeg',
                  title: 'Content Strategy',
                  category: 'Content Marketing',
                ),
              ),
              Expanded(
                child: _PortfolioItem(
                  imageUrl:
                      'https://raw.githubusercontent.com/subin1511/Digaxion/main/assets/images/image2.jpeg',
                  title: 'Social Media Growth',
                  category: 'Social Media Management',
                ),
              ),
              Expanded(
                child: _PortfolioItem(
                  imageUrl:
                      'https://raw.githubusercontent.com/subin1511/Digaxion/main/assets/images/image3.jpeg',
                  title: 'Email Campaign',
                  category: 'Email Marketing',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _PortfolioItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String category;

  const _PortfolioItem({
    required this.imageUrl,
    required this.title,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image Container with proper sizing
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(15),
              ),
              color: Colors.grey[200],
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(15),
              ),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Container(
                    color: Colors.grey[300],
                    child: Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    ),
                  );
                },
                errorBuilder: (context, error, stackTrace) {
                  print('Image loading error: $error');
                  return Container(
                    color: Colors.grey[300],
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.business_center,
                          color: Colors.grey,
                          size: 50,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Portfolio Project',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Image not available',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          // Content section
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  category,
                  style: const TextStyle(
                    color: Color(0xFF2563EB),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
