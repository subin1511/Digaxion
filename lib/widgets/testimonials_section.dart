import 'package:flutter/material.dart';

class TestimonialsSection extends StatelessWidget {
  const TestimonialsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      color: Color(0xFF2563EB),
      child: Column(
        children: [
          Text(
            'What Our Clients Say',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Success stories from businesses we\'ve helped grow',
            style: TextStyle(fontSize: 18, color: Colors.white70),
          ),
          const SizedBox(height: 50),
          Row(
            children: [
              _TestimonialCard(
                text:
                    'Digaxion transformed our online presence. Our revenue increased by 200% in just 6 months!',
                author: 'Sarah Johnson',
                company: 'Tech Innovations Inc.',
              ),
              _TestimonialCard(
                text:
                    'Professional, creative, and results-driven. The team exceeded all our expectations.',
                author: 'Michael Chen',
                company: 'Global Solutions Ltd.',
              ),
              _TestimonialCard(
                text:
                    'Outstanding service and incredible results. Highly recommended for any business looking to grow.',
                author: 'Emily Davis',
                company: 'Creative Minds Agency',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _TestimonialCard extends StatelessWidget {
  final String text;
  final String author;
  final String company;

  const _TestimonialCard({
    required this.text,
    required this.author,
    required this.company,
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
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            // Using PNG image instead of icon
            Container(
              width: 40,
              height: 40,
              child: Image.network(
                'https://raw.githubusercontent.com/subin1511/Digaxion/main/assets/icons/quote.png',
                color: Color(0xFF2563EB),
                errorBuilder: (context, error, stackTrace) {
                  return Icon(
                    Icons.format_quote,
                    color: Color(0xFF2563EB),
                    size: 40,
                  );
                },
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return CircularProgressIndicator(
                    color: Color(0xFF2563EB),
                    strokeWidth: 2,
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
                height: 1.6,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              author,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            Text(
              company,
              style: TextStyle(
                color: Color(0xFF2563EB),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
