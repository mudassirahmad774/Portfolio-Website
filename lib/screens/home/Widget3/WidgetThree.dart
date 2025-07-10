import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/Widget3/Widget3of1.dart';
import 'package:portfolio/screens/home/Widget3/Widget3of2.dart';
import 'package:portfolio/utils/utils.dart';

class WidgetThree extends StatelessWidget {
  const WidgetThree({super.key});

  @override
  Widget build(BuildContext context) {
    return utils.desktopMode(context)
        ? Row(
      children: [
        Widget3of1(),
        SizedBox(width: 15),
       // Widget3of2(),
      ],
    )
        : SizedBox(
      height: utils.MobileMode(context) ? 1020 : 730,
      child: Column(
        children: [
          SizedBox(child: Widget3of1()),
          SizedBox(height: 15),
        //  Widget3of2(),
        ],
      ),
    );
  }
}
