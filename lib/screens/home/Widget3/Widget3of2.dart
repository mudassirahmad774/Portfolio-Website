// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:portfolio/utils/colors.dart';
// import 'package:portfolio/utils/utils.dart';
// import 'package:portfolio/widgets/GithubStatusItem.dart';
// import 'package:portfolio/widgets/GlowingContainer.dart';
// import 'package:portfolio/widgets/MyText.dart';
//
// class Widget3of2 extends StatelessWidget {
//   const Widget3of2({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       flex: utils.desktopMode(context) ?2:1,
//       child: GlowingContainer(
//         conatinerH: utils.MobileMode(context) ? 300 : 400,
//         isAnimate: false,
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 20,
//               ),
//               Row(
//                 children: [
//                   SizedBox(
//                     width: 20,
//                   ),
//                   FaIcon(FontAwesomeIcons.circleDot, color: colors.green),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   // MyText(
//                   //   text: "GitHub Status",
//                   //   color: colors.green,
//                   // )
//                 ],
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               GithubStatusItem(
//                 date: "15 Dec",
//                 title: "Youtube-clone-project-Flutter-android-ios-web",
//               ),
//               GithubStatusItem(
//                 date: "15 Dec",
//                 title: "Youtube-clone-project-Flutter-android-ios-web",
//               ),
//               GithubStatusItem(
//                 date: "15 Dec",
//                 title: "Youtube-clone-project-Flutter-android-ios-web",
//               ),
//               GithubStatusItem(
//                 date: "15 Dec",
//                 title: "Youtube-clone-project-Flutter-android-ios-web",
//               ),
//               GithubStatusItem(
//                 date: "15 Dec",
//                 title: "Youtube-clone-project-Flutter-android-ios-web",
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }