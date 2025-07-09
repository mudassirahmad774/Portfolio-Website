import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portfolio/controllers/Home/HeaderController.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SocialButton extends StatelessWidget {
  SocialButton({super.key});

  HeaderController headerController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ///Whatsapp
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: InkWell(
            onTap: () async {
              const phoneNumber = '+923359902693'; // your full international phone number
              final whatsappUrl = 'https://wa.me/$phoneNumber'; // No dashes or spaces

              if (await canLaunchUrlString(whatsappUrl)) {
                await launchUrlString(whatsappUrl);
              } else {
                throw 'Could not launch $whatsappUrl';
              }
            },
            onHover: (value) {
              headerController.HoveronWhatsapp(value);
            },
            child: Obx(
              () => FaIcon(
                FontAwesomeIcons.whatsapp,
                color: headerController.isHoveronWhatsapp.value
                    ? Colors.green
                    : Colors.white,
              ),
            ),
          ),
        ),

        // Instagram
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: InkWell(
            onTap: () async {
              const instagramUrl = 'https://www.instagram.com/mudassirahmad_774/profilecard/?igsh=MTNqaW83Y29iaW02ZA==';
              if (await canLaunchUrlString(instagramUrl)) {
                await launchUrlString(instagramUrl);
              } else {
                throw 'Could not launch $instagramUrl';
              }
            },

            onHover: (value) {
              headerController.HoveronInsta(value);
            },
            child: Obx(
              () => FaIcon(
                FontAwesomeIcons.instagram,
                color: headerController.isHoveronInsta.value
                    ? Colors.green
                    : Colors.white,
              ),
            ),
          ),
        ),

        ///Github
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: InkWell(
            onTap: () async {
              final url = Uri.parse("https://github.com/mudassirahmad774?tab=repositories");
              if (await canLaunchUrl(url)) {
                await launchUrl(url, mode: LaunchMode.externalApplication);
              } else {
                throw 'Could not launch $url';
              }
            },
            onHover: (value) {
              headerController.HoveronGithub(value);
            },
            child: Obx(
              () => FaIcon(
                FontAwesomeIcons.github,
                color: headerController.isHoveronGithub.value
                    ? Colors.green
                    : Colors.white,
              ),
            ),
          ),
        ),

        ///Linkedin
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: InkWell(
            onTap: () async {
              final url = Uri.parse("https://www.linkedin.com/in/mudassirahmad774/");
              if (await canLaunchUrl(url)) {
                await launchUrl(url, mode: LaunchMode.externalApplication);
              } else {
                throw 'Could not launch $url';
              }
            },
            onHover: (value) {
              headerController.HoveronLinkedin(value);
            },
            child: Obx(
              () => FaIcon(
                FontAwesomeIcons.linkedin,
                color: headerController.isHoveronLinkedin.value
                    ? Colors.green
                    : Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
