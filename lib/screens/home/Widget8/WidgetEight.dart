// import 'dart:convert';
// import 'dart:ui';
//
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:get/get.dart';
// import 'package:portfolio/controllers/Home/Widget8/WidgetEightController.dart';
// import 'package:portfolio/utils/dataBase.dart';
// import 'package:portfolio/utils/utils.dart';
// import 'package:portfolio/widgets/GlowingContainer.dart';
// import 'package:portfolio/widgets/MyText.dart';
// import 'package:portfolio/widgets/SectionEightWid.dart';
//
// class WidgetEight extends StatelessWidget {
//   WidgetEight({super.key});
//
//   WidgetEightController widgetEightController = Get.find();
//
//   @override
//   Widget build(BuildContext context) {
//     return GlowingContainer(
//         conatinerH: 700,
//         isAnimate: false,
//         child: SizedBox(
//           width: utils.GlobalWidth(context),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(
//                 height: 10,
//               ),
//               Padding(
//                 padding: EdgeInsets.only(left: utils.desktopMode(context)?30:5),
//                 child: MyText(
//                   text: "Testimonials",
//                   color: Colors.green,
//                   fontSize: 50,
//                 ),
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               Padding(
//                 padding: EdgeInsets.only(left: utils.desktopMode(context)?30:5),
//                 child: MyText(
//                   text:
//                       "Hard work and daily learning help me better satisfy my customers!",
//                   fontSize: 18,
//                   letterSpacing: 2,
//                 ),
//               ),
//               SizedBox(
//                 height: 40,
//               ),
//               Expanded(
//                 child: ScrollConfiguration(
//                   behavior: ScrollConfiguration.of(context).copyWith(
//                     dragDevices: {
//                       PointerDeviceKind.mouse,
//                       PointerDeviceKind.touch,
//                     },
//                     scrollbars: false,
//                   ),
//                   child: ListView.builder(
//                     shrinkWrap: true,
//                     scrollDirection: Axis.horizontal,
//                     itemBuilder: (context, index) {
//                       return Padding(
//                         padding:
//                              EdgeInsets.symmetric(horizontal: utils.MobileMode(context)?5:30),
//                         child: SectionEightWid(
//                           clientName: dataBase.widget8Testimonials[index]
//                               ["clientName"],
//                           companyName: dataBase.widget8Testimonials[index]
//                               ["companyName"],
//                           Testimonial: dataBase.widget8Testimonials[index]
//                               ["Testimonial"],
//                           imgPath: dataBase.widget8Testimonials[index]
//                               ["imgPath"],
//                           privateNum: index,
//                         ),
//                       );
//                     },
//                     itemCount: dataBase.widget8Testimonials.length,
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: utils.MobileMode(context) ? 15 : 60,
//               ),
//             ],
//           ),
//         ));
//   }
// }
