import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 🔹 Text Section
        Container(
          width: double.infinity,
          color: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'WHAT WE DO',
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
                  color: Colors.black,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 30),
              // 🔹 Cards Row
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    _ServiceCard(
                      icon: Icons.trending_up,
                      title: 'Grow Your Business',
                      subtitle:
                      'We help identify the best ways to improve your business',
                    ),
                    _ServiceCard(
                      icon: Icons.favorite,
                      title: 'Improve brand loyalty',
                      subtitle:
                      'We help identify the best ways to improve your services',
                    ),
                    _ServiceCard(
                      icon: Icons.business_center,
                      title: 'Improve Business Model',
                      subtitle:
                      'We help identify the best ways to grow your business',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // 🔹 Stats Section
        Container(
          width: double.infinity,
          color: const Color(0xFFD7F5DC),
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              _StatCard(
                icon: Icons.insert_chart,
                label: 'Completed Projects',
                value: '100 +',
              ),
              _StatCard(
                icon: Icons.people,
                label: 'Customer Satisfaction',
                value: '20 %',
              ),
              _StatCard(
                icon: Icons.monetization_on,
                label: 'Raised by Clients',
                value: '\$10M',
              ),
              _StatCard(
                icon: Icons.calendar_today,
                label: 'Years in Business',
                value: '2 yrs',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// 🔘 Service Card Widget
class _ServiceCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const _ServiceCard({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240.w,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFF7F9FB),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Icon box
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFFD7F5DC),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, size: 28, color: Colors.black),
          ),
          const SizedBox(height: 16),
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            subtitle,
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Text(
                'Learn More',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 6),
              const Icon(Icons.arrow_forward, size: 16),
            ],
          )
        ],
      ),
    );
  }
}

// 🔘 Stat Card Widget
class _StatCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _StatCard({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 36, color: Colors.black),
        const SizedBox(height: 8),
        Text(
          label,
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF1BBF72),
          ),
        ),
      ],
    );
  }
}
