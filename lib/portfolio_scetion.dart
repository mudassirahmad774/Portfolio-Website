import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 1300,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
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
              int crossAxisCount = constraints.maxWidth > 1000 ? 3 : 2;
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

// 🟢 Project Card Widget with Read More Toggle
class _ProjectCard extends StatefulWidget {
  final String title;
  final String description;
  final String imagePath;

  const _ProjectCard({
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  State<_ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<_ProjectCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF7F9FB),
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 4),
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
              widget.imagePath,
              height: 280.h,
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
                  widget.title,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  widget.description,
                  maxLines: isExpanded ? 6 : 4,
                  overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 4),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  child: Text(
                    isExpanded ? 'Read Less' : 'Read More',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: const Color(0xFF1BBF72),
                      fontWeight: FontWeight.w600,
                    ),
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

// 🗂 Dummy Projects List
final List<Map<String, String>> projects = [
  {
    'title': 'AssignmentAI',
    'description':
    'Introducing AssignmentAI: the ultimate document processing app. Upload your books, research papers, or academic papers, and our advanced AI will provide accurate, contextually relevant answers. Whether it\'s a child\'s book or a complex research paper, AssignmentAI ensures responses match the document\'s tone and context. Enjoy features like notifications, advanced profiling, secure payments, and smart search. Our recommendation system helps new users find the documents they need. With AssignmentAI, getting the right answers from your documents has never been easier.',
    'image': 'assets/WhatsApp Image 2025-06-25 at 5.17.47 PM.jpeg',
  },
  {
    'title': 'My Football Career',
    'description':
    'Introducing My Football Career: your all-in-one solution for players, clubs, coaches, and agents. Clubs can post offers, and players and coaches can apply directly. Agents can post on behalf of clubs. Enjoy features like real-time chat, push notifications, advanced profiling, player statistics, and social links. Our map feature lets users find nearby clubs, and our booking system allows players to reserve football grounds. My Football Career streamlines connections and opportunities in the football world, making it easier than ever to advance your career.',
    'image': 'assets/WhatsApp Image 2025-06-29 at 12.24.57 AM.jpeg',
  },
  {
    'title': 'E-commerce App UI',
    'description': 'An elegant shopping app UI for fashion products built with Flutter.',
    'image': 'assets/WhatsApp Image 2025-06-25 at 5.10.02 PM.jpeg',
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
