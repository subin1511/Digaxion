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
                icon: Icons.search,
                title: 'SEO Optimization',
                description:
                    'Improve your search engine rankings and drive organic traffic to your website.',
              ),
              _ServiceCard(
                icon: Icons.ads_click,
                title: 'PPC Advertising',
                description:
                    'Targeted advertising campaigns that deliver maximum ROI for your business.',
              ),
              _ServiceCard(
                icon: Icons.social_distance,
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
                icon: Icons.content_copy,
                title: 'Content Marketing',
                description:
                    'Create compelling content that resonates with your target audience.',
              ),
              _ServiceCard(
                icon: Icons.email,
                title: 'Email Marketing',
                description:
                    'Nurture leads and build customer relationships through strategic email campaigns.',
              ),
              _ServiceCard(
                icon: Icons.analytics,
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
  final IconData icon;
  final String title;
  final String description;

  const _ServiceCard({
    required this.icon,
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
            Icon(icon, size: 50, color: Color(0xFF2563EB)),
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
