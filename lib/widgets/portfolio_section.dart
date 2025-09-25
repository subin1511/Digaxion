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
//           Text(
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

//           // Portfolio Grid - Replace with your images
//           Row(
//             children: [
//               Expanded(
//                 child: _PortfolioItem(
//                   imageUrl:
//                       'https://via.placeholder.com/400x300/2563EB/FFFFFF?text=Project+1',
//                   title: 'E-commerce Success',
//                   category: 'SEO & Social Media',
//                 ),
//               ),
//               Expanded(
//                 child: _PortfolioItem(
//                   imageUrl:
//                       'https://via.placeholder.com/400x300/1D4ED8/FFFFFF?text=Project+2',
//                   title: 'Brand Launch',
//                   category: 'Full Digital Strategy',
//                 ),
//               ),
//               Expanded(
//                 child: _PortfolioItem(
//                   imageUrl:
//                       'https://via.placeholder.com/400x300/3B82F6/FFFFFF?text=Project+3',
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
//                       'https://via.placeholder.com/400x300/60A5FA/FFFFFF?text=Project+4',
//                   title: 'Content Strategy',
//                   category: 'Content Marketing',
//                 ),
//               ),
//               Expanded(
//                 child: _PortfolioItem(
//                   imageUrl:
//                       'https://via.placeholder.com/400x300/93C5FD/FFFFFF?text=Project+5',
//                   title: 'Social Media Growth',
//                   category: 'Social Media Management',
//                 ),
//               ),
//               Expanded(
//                 child: _PortfolioItem(
//                   imageUrl:
//                       'https://via.placeholder.com/400x300/DBEAFE/FFFFFF?text=Project+6',
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
//           BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 4)),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             height: 200,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
//               color: Colors.grey[200],
//               image: DecorationImage(
//                 image: NetworkImage(imageUrl),
//                 fit: BoxFit.cover,
//               ),
//             ),
//             child: const Center(
//               child: Text(
//                 'Your Project Image',
//                 style: TextStyle(color: Colors.grey),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(20),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black87,
//                   ),
//                 ),
//                 const SizedBox(height: 5),
//                 Text(
//                   category,
//                   style: TextStyle(
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
          Text(
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

          // Portfolio Grid - Using asset images
          Row(
            children: [
              Expanded(
                child: _PortfolioItem(
                  imagePath: 'assets/images/image1.jpeg',
                  title: 'E-commerce Success',
                  category: 'SEO & Social Media',
                ),
              ),
              Expanded(
                child: _PortfolioItem(
                  imagePath: 'assets/images/image2.jpeg',
                  title: 'Brand Launch',
                  category: 'Full Digital Strategy',
                ),
              ),
              Expanded(
                child: _PortfolioItem(
                  imagePath: 'assets/images/image3.jpeg',
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
                  imagePath: 'assets/images/image1.jpeg',
                  title: 'Content Strategy',
                  category: 'Content Marketing',
                ),
              ),
              Expanded(
                child: _PortfolioItem(
                  imagePath: 'assets/images/image2.jpeg',
                  title: 'Social Media Growth',
                  category: 'Social Media Management',
                ),
              ),
              Expanded(
                child: _PortfolioItem(
                  imagePath: 'assets/images/image3.jpeg',
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
  final String imagePath;
  final String title;
  final String category;

  const _PortfolioItem({
    required this.imagePath,
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
          BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 4)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              color: Colors.grey[200],
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  category,
                  style: TextStyle(
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
