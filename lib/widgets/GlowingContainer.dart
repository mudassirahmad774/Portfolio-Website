import 'dart:math';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';

class GlowingContainer extends StatefulWidget {
  final double thickness;
  final Duration speed;
  final Color glowColor;
  final double conatinerW;
  final double conatinerH;
  final double glowLength;
  final Widget child;
  final bool isAnimate;

  const GlowingContainer(
      {super.key,
      this.thickness = 0.8, // Default thickness
      this.speed = const Duration(seconds: 4), // Default speed
      this.glowColor = Colors.lightGreen, // Default color
      this.conatinerH = 300, // Default size
      this.conatinerW = 300, // Default size
      this.glowLength = 180, // Default size
      required this.child,
      required this.isAnimate});

  @override
  State<GlowingContainer> createState() => _GlowingContainerState();
}

class _GlowingContainerState extends State<GlowingContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    if (widget.isAnimate) {
      _controller = AnimationController(
        vsync: this,
        duration: widget.speed,
      )..repeat();
      _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
    }
  }

  @override
  void dispose() {
    if (widget.isAnimate) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // width: widget.conatinerW,
        height: widget.conatinerH,
        decoration: BoxDecoration(
          color: colors.getConatinerColor(),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: colors.getBorderColor(), width: 0.3),
        ),
        child: widget.isAnimate
            ? AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomPaint(
                        size: Size(widget.conatinerW, widget.conatinerH),
                        painter: GlowPainter(
                          animationValue: _animation.value,
                          thickness: widget.thickness,
                          color: widget.glowColor,
                          glowLength: widget.glowLength * 4,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: widget.child,
                      ),
                    ],
                  );
                },
              )
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: widget.child,
              ),
      ),
    );
  }
}

class GlowPainter extends CustomPainter {
  final double animationValue;
  final double thickness;
  final double glowLength;
  final Color color;

  GlowPainter({
    required this.animationValue,
    required this.thickness,
    required this.glowLength,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeCap = StrokeCap.round;

    double r = 10;
    double perimeter =
        2 * (size.width - 2 * r + size.height - 2 * r) + 2 * pi * r;
    double position = animationValue * perimeter;

    drawSegment(canvas, paint, size, position, position + glowLength);
  }

  void drawSegment(
      Canvas canvas, Paint paint, Size size, double start, double end) {
    double r = 10;
    double perimeter =
        2 * (size.width - 2 * r + size.height - 2 * r) + 2 * pi * r;

    for (double i = start; i < end; i += 0.5) {
      Offset p = getPoint(i % perimeter, size);
      canvas.drawCircle(p, thickness, paint);
    }
  }

  Offset getPoint(double p, Size size) {
    double w = size.width;
    double h = size.height;
    double r = 10;
    double straightW = w - 2 * r;
    double straightH = h - 2 * r;
    double arcLen = pi * r / 2;

    if (p < straightW) {
      return Offset(r + p, h);
    }
    p -= straightW;

    if (p < arcLen) {
      double angle = pi / 2 * (p / arcLen);
      return Offset(w - r + r * sin(angle), h - r + r * cos(angle));
    }
    p -= arcLen;

    if (p < straightH) {
      return Offset(w, h - r - p);
    }
    p -= straightH;

    if (p < arcLen) {
      double angle = pi / 2 * (p / arcLen);
      return Offset(w - r + r * cos(angle), r - r * sin(angle));
    }
    p -= arcLen;

    if (p < straightW) {
      return Offset(w - r - p, 0);
    }
    p -= straightW;

    if (p < arcLen) {
      double angle = pi / 2 * (p / arcLen);
      return Offset(r - r * sin(angle), r - r * cos(angle));
    }
    p -= arcLen;

    if (p < straightH) {
      return Offset(0, r + p);
    }
    p -= straightH;

    // bottom-left arc
    double angle = pi / 2 * (p / arcLen);
    return Offset(r - r * cos(angle), h - r + r * sin(angle));
  }

  @override
  bool shouldRepaint(covariant GlowPainter oldDelegate) {
    return oldDelegate.animationValue != animationValue ||
        oldDelegate.thickness != thickness ||
        oldDelegate.color != color;
  }
}
