import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🔹 Title + Subtitle
          Text(
            'OUR PORTFOLIO',
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: const Color(0xFF1BBF72),
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'We provide the Perfect Solution\nto your business growth',
            style: GoogleFonts.poppins(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              height: 1.4,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 32),

          // 🔹 Projects Grid
          LayoutBuilder(
            builder: (context, constraints) {
              int crossAxisCount = constraints.maxWidth > 900 ? 3 : 2;
              return GridView.builder(
                shrinkWrap: true,
                itemCount: projects.length,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  mainAxisSpacing: 24,
                  crossAxisSpacing: 24,
                  childAspectRatio: 3 / 3.5,
                ),
                itemBuilder: (context, index) {
                  final project = projects[index];
                  return _ProjectCard(
                    title: project['title']!,
                    description: project['description']!,
                    imagePath: project['image']!,
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

// 🟢 Project Card Widget
class _ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const _ProjectCard({
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF7F9FB),
        borderRadius: BorderRadius.circular(16),
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
          // 🖼 Image
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            child: Image.asset(
              imagePath,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          // 📄 Text Content
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// 🗂 Dummy Projects List
final List<Map<String, String>> projects = [
  {
    'title': 'Digital Marketing Agency Website',
    'description': 'This is a portfolio site for a digital marketing agency. Built with clean sections and animations.',
    'image': 'assets/WhatsApp Image 2025-06-25 at 5.17.47 PM.jpeg',
  },
  {
    'title': 'Task Management App UI',
    'description': 'Plan your tasks easily with this simple and powerful productivity mobile UI.',
    'image': 'assets/WhatsApp Image 2025-06-25 at 5.17.47 PM.jpeg',
  },
  {
    'title': 'E-commerce App UI',
    'description': 'An elegant shopping app UI for fashion products built with Flutter.',
    'image': 'assets/WhatsApp Image 2025-06-25 at 5.17.47 PM.jpeg',
  },
  {
    'title': 'Personal Portfolio Website',
    'description': 'A clean personal portfolio website to show your projects and skills.',
    'image': 'assets/WhatsApp Image 2025-06-25 at 5.17.47 PM.jpeg',
  },
  {
    'title': 'Agency Landing Page',
    'description': 'A modern, responsive landing page for a digital agency.',
    'image': 'assets/WhatsApp Image 2025-06-25 at 5.17.47 PM.jpeg',
  },
];
