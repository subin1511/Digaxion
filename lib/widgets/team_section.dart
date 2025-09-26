// import 'package:flutter/material.dart';

// class TeamSection extends StatelessWidget {
//   const TeamSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
//       color: Colors.white,
//       child: Column(
//         children: [
//           const Text(
//             'Our Team',
//             style: TextStyle(
//               fontSize: 36,
//               fontWeight: FontWeight.bold,
//               color: Color(0xFF2563EB),
//             ),
//           ),
//           const SizedBox(height: 10),
//           Text(
//             'Meet the experts behind our success',
//             style: TextStyle(fontSize: 18, color: Colors.grey[600]),
//           ),
//           const SizedBox(height: 50),

//           // Team Members Grid
//           Row(
//             children: [
//               Expanded(
//                 child: _TeamMember(
//                   imagePath: 'assets/images/ceo.jpeg',
//                   name: 'Anatha Krishnan KS',
//                   position: 'Chief Executive Officer',
//                   description:
//                       'Visionary leader with 10+ years of experience in digital marketing and business strategy.',
//                 ),
//               ),
//               Expanded(
//                 child: _TeamMember(
//                   imagePath: 'assets/images/marketing.jpeg',
//                   name: 'Niya raj CK',
//                   position: 'Chief Marketing Officer',
//                   description:
//                       'Marketing expert specializing in brand strategy and customer engagement.',
//                 ),
//               ),
//               Expanded(
//                 child: _TeamMember(
//                   imagePath: 'assets/images/tech.jpeg',
//                   name: 'Abdul Nafih TK',
//                   position: 'Chief Technology Officer',
//                   description:
//                       'Tech innovator driving our digital solutions and platform development.',
//                 ),
//               ),
//             ],
//           ),

//           const SizedBox(height: 40),

//           Row(
//             children: [
//               Expanded(
//                 child: _TeamMember(
//                   imagePath: 'assets/images/social.jpeg',
//                   name: 'Suhailathulaflahiyya KK',
//                   position: 'Social Media Manager',
//                   description:
//                       'Creative content strategist with expertise in viral social media campaigns.',
//                 ),
//               ),
//               Expanded(
//                 child: _TeamMember(
//                   imagePath: 'assets/images/innovation.jpeg',
//                   name: 'Mohammed Nabeesh KV',
//                   position: 'Head of Innovation',
//                   description:
//                       'Forward-thinker focused on emerging trends and innovative marketing solutions.',
//                 ),
//               ),
//               const Expanded(child: SizedBox()), // Empty space for alignment
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class _TeamMember extends StatelessWidget {
//   final String imagePath;
//   final String name;
//   final String position;
//   final String description;

//   const _TeamMember({
//     required this.imagePath,
//     required this.name,
//     required this.position,
//     required this.description,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.all(15),
//       padding: const EdgeInsets.all(20),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(15),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black12,
//             blurRadius: 10,
//             offset: const Offset(0, 4),
//           ),
//         ],
//       ),
//       child: Column(
//         children: [
//           // Profile Image with proper fit
//           Container(
//             width: 120,
//             height: 120,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.grey[200],
//               border: Border.all(color: const Color(0xFF2563EB), width: 3),
//             ),
//             child: ClipOval(
//               child: Image.asset(
//                 imagePath,
//                 fit: BoxFit.contain, // Changed to contain to show full face
//                 width: 120,
//                 height: 120,
//               ),
//             ),
//           ),
//           const SizedBox(height: 20),

//           // Name
//           Text(
//             name,
//             style: const TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//               color: Colors.black87,
//             ),
//             textAlign: TextAlign.center,
//           ),
//           const SizedBox(height: 5),

//           // Position
//           Text(
//             position,
//             style: TextStyle(
//               fontSize: 16,
//               color: const Color(0xFF2563EB),
//               fontWeight: FontWeight.w600,
//             ),
//             textAlign: TextAlign.center,
//           ),
//           const SizedBox(height: 15),

//           // Description
//           Text(
//             description,
//             style: TextStyle(
//               fontSize: 14,
//               color: Colors.grey[600],
//               height: 1.5,
//             ),
//             textAlign: TextAlign.center,
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class TeamSection extends StatelessWidget {
  const TeamSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      color: Colors.white,
      child: Column(
        children: [
          const Text(
            'Our Team',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2563EB),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Meet the experts behind our success',
            style: TextStyle(fontSize: 18, color: Colors.grey[600]),
          ),
          const SizedBox(height: 50),

          // Team Members Grid
          Row(
            children: [
              Expanded(
                child: _TeamMember(
                  imageUrl:
                      'https://subin1511.github.io/Digaxion/assets/images/ceo.jpeg',
                  name: 'Anatha Krishnan KS',
                  position: 'Chief Executive Officer',
                  description:
                      'Visionary leader with 10+ years of experience in digital marketing and business strategy.',
                ),
              ),
              Expanded(
                child: _TeamMember(
                  imageUrl:
                      'https://subin1511.github.io/Digaxion/assets/images/marketing.jpeg',
                  name: 'Niya raj CK',
                  position: 'Chief Marketing Officer',
                  description:
                      'Marketing expert specializing in brand strategy and customer engagement.',
                ),
              ),
              Expanded(
                child: _TeamMember(
                  imageUrl:
                      'https://subin1511.github.io/Digaxion/assets/images/tech.jpeg',
                  name: 'Abdul Nafih TK',
                  position: 'Chief Technology Officer',
                  description:
                      'Tech innovator driving our digital solutions and platform development.',
                ),
              ),
            ],
          ),

          const SizedBox(height: 40),

          Row(
            children: [
              Expanded(
                child: _TeamMember(
                  imageUrl:
                      'https://subin1511.github.io/Digaxion/assets/images/social.jpeg',
                  name: 'Suhailathulaflahiyya KK',
                  position: 'Social Media Manager',
                  description:
                      'Creative content strategist with expertise in viral social media campaigns.',
                ),
              ),
              Expanded(
                child: _TeamMember(
                  imageUrl:
                      'https://subin1511.github.io/Digaxion/assets/images/innovation.jpeg',
                  name: 'Mohammed Nabeesh KV',
                  position: 'Head of Innovation',
                  description:
                      'Forward-thinker focused on emerging trends and innovative marketing solutions.',
                ),
              ),
              const Expanded(child: SizedBox()), // Empty space for alignment
            ],
          ),
        ],
      ),
    );
  }
}

class _TeamMember extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String position;
  final String description;

  const _TeamMember({
    required this.imageUrl,
    required this.name,
    required this.position,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          // Profile Image with proper fit
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[200],
              border: Border.all(color: const Color(0xFF2563EB), width: 3),
            ),
            child: ClipOval(
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                width: 120,
                height: 120,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  );
                },
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey[300],
                    child: const Icon(
                      Icons.person,
                      color: Colors.grey,
                      size: 50,
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 20),

          // Name
          Text(
            name,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 5),

          // Position
          Text(
            position,
            style: TextStyle(
              fontSize: 16,
              color: const Color(0xFF2563EB),
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 15),

          // Description
          Text(
            description,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
