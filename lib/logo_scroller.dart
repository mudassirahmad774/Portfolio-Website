import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoScroller extends StatefulWidget {
  const LogoScroller({super.key});

  @override
  State<LogoScroller> createState() => _LogoScrollerState();
}

class _LogoScrollerState extends State<LogoScroller> with SingleTickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();
  late final AnimationController _autoScrollController;

  @override
  void initState() {
    super.initState();

    _autoScrollController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 20),
    )..repeat();

    _autoScrollController.addListener(() {
      if (_scrollController.hasClients) {
        double newOffset = _scrollController.offset + 0.5;
        if (newOffset >= _scrollController.position.maxScrollExtent) {
          _scrollController.jumpTo(0); // loop back to start
        } else {
          _scrollController.jumpTo(newOffset);
        }
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _autoScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: Colors.white,
      //padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(10, (index) => _buildLogo('assets/Slack.png')),
        ),
      ),
    );
  }

  Widget _buildLogo(String assetPath) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Image.asset(
        assetPath,
        height: 40.h,
        fit: BoxFit.contain,
      ),
    );
  }
}
