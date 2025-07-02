import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/portfolio_scetion.dart';
import 'package:portfolio_website/service_section.dart';

import 'logo_scroller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD7F5DC),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 🔝 Navigation Bar
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 24),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Left - Name Logo
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Mudassir ',
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: 'Ahmad',
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFFF55F1D),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Right - Navigation + Buttons
                  Row(
                    children: [
                      _NavItem(title: 'Services'),
                      const SizedBox(width: 30),
                      _NavItem(title: 'About Us'),
                      const SizedBox(width: 30),
                      _NavItem(title: 'Contact Us'),
                      const SizedBox(width: 30),
                      _NavButton(title: 'Login', filled: false),
                      const SizedBox(width: 12),
                      _NavButton(title: 'Register', filled: true),
                    ],
                  ),
                ],
              ),
            ),

            // 🦸 Hero Section
            Container(
           //   padding: const EdgeInsets.symmetric(horizontal: 40),
              color: const Color(0xFFD7F5DC),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // 📄 Left Text Content
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Increase Your\nCustomers Loyalty\nand Satisfaction',
                                style: GoogleFonts.poppins(
                                  fontSize: 38,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  height: 1.3,
                                ),
                              ),
                              SizedBox(height: 20.h),
                              Text(
                                'We help businesses like yours earn more customers,\nstand out from competitors, make more money.',
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  color: Colors.black87,
                                ),
                              ),
                              const SizedBox(height: 30),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                                  backgroundColor: const Color(0xFF1BBF72),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: Text(
                                  'Get Started',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(width: 40.w),

                        // 👩‍💻 Right Image
                        Image.asset(
                          'assets/Profile_-removebg-preview.png', // replace with your actual image path
                         fit: BoxFit.fitHeight,
                         // scale: 1.sp,
                        ),



                      ],
                    ),
                  ),
                  const LogoScroller(),
                  SizedBox(height: 20,),
                  const ServicesSection(),
                  const PortfolioSection(),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}

// ✅ Navigation Item Widget
class _NavItem extends StatelessWidget {
  final String title;
  const _NavItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print('$title tapped'),
      child: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
      ),
    );
  }
}

// ✅ Login/Register Button Widget
class _NavButton extends StatelessWidget {
  final String title;
  final bool filled;

  const _NavButton({required this.title, this.filled = false});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => print('$title tapped'),
      style: OutlinedButton.styleFrom(
        backgroundColor: filled ? const Color(0xFF1BBF72) : Colors.transparent,
        side: filled ? BorderSide.none : const BorderSide(color: Color(0xFF1BBF72)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      ),
      child: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 14,
          color: filled ? Colors.white : const Color(0xFF1BBF72),
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
