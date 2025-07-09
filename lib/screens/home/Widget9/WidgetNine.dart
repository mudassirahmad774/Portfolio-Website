import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:portfolio/widgets/GlowingContainer.dart';
import 'package:portfolio/widgets/MyText.dart';
import 'package:portfolio/widgets/SectionNineWid.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class WidgetNine extends StatelessWidget {
  WidgetNine({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: utils.GlobalWidth(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(
            text: "Let's connect",
            color: Colors.green,
            fontSize: utils.MobileMode(context) ? 28 : 42,
          ),
          SizedBox(height: 20,),
          utils.desktopMode(context)?Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              secNine[0],
              secNine[1],
              secNine[2],
              secNine[3],
            ],
          ):utils.TabletMode(context)?Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  secNine[0],
                  Spacer(),
                  secNine[1],
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  secNine[3],
                  Spacer(),
                  secNine[2],
                ],
              )
            ],
          ):Column(
            spacing: 10,
            children: [
              secNine[0],
              secNine[1],
              secNine[2],
              secNine[3],
            ],
          ),
        ],
      ),
    );
  }
  List<Widget> secNine = [
    Sectionninewid(
      iconData: FontAwesomeIcons.envelope,
      title: "Email",
      desc: "mudassirahmad774@gmail.com",
      onTap: () async {
        final url = 'mailto:mudassirahmad774@gmail.com?subject=Contact from Portfolio';
        if (await canLaunchUrlString(url)) {
          await launchUrlString(url);
        } else {
          throw 'Could not launch $url';
        }
      },
    ),
    Sectionninewid(iconData: FontAwesomeIcons.github, title: "Github", desc: "MudsaAhmad",  onTap: () async {
      final url = Uri.parse("https://github.com/mudassirahmad774?tab=repositories");
      if (await canLaunchUrl(url)) {
        await launchUrl(url, mode: LaunchMode.externalApplication);
      } else {
        throw 'Could not launch $url';
      }
    },),
    Sectionninewid(
      iconData: FontAwesomeIcons.linkedin,
      title: "Linkedin",
      desc: "mudassirahmad774",
      onTap: () async {
        final url = Uri.parse("https://www.linkedin.com/in/mudassirahmad774/");
        if (await canLaunchUrl(url)) {
          await launchUrl(url, mode: LaunchMode.externalApplication);
        } else {
          throw 'Could not launch $url';
        }
      },
    ),
    Sectionninewid(
      iconData: FontAwesomeIcons.phone,
      title: "Phone",
      desc: "+92-3359902693",
      onTap: () async {
        final url = 'tel:+923359902693';
        if (await canLaunchUrlString(url)) {
          await launchUrlString(url);
        } else {
          throw 'Could not launch $url';
        }
      },
    ),
  ];
}
