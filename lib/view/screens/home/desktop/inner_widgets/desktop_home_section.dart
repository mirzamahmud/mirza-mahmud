import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:mirza_mahmud/utils/animation/app_animations.dart';
import 'package:mirza_mahmud/utils/color/app_colors.dart';
import 'package:mirza_mahmud/utils/icon/app_icons.dart';
import 'package:mirza_mahmud/utils/image/app_images.dart';
import 'package:mirza_mahmud/view/widgets/buttons/custom_elevated_button.dart';
import 'package:url_launcher/url_launcher.dart';

class DesktopHomeSection extends StatelessWidget {

  const DesktopHomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // todo -> top anim
        Positioned(
          top: -300,
          left: -300,
          child: Lottie.asset(AppAnimations.lottieCircleAnim, height: 800, width: 800),
        ),

        // todo -> bottom anim
        Positioned(
          bottom: -80,
          right: -150,
          child: Lottie.asset(AppAnimations.lottieCircleAnim, height: 400, width: 400),
        ),

        // todo -> my image
        Positioned.fill(
          top: -60,
          right: -100,
          child: Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 550, height: 550,
              padding: const EdgeInsetsDirectional.symmetric(vertical: 4, horizontal: 4),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.colorRoyalBlue, width: 4)
              ),
              child: Container(
                height: 600, width: 600,
                decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage(AppImages.myImage), fit: BoxFit.cover),
                    shape: BoxShape.circle
                ),
              ),
            ),
          ),
        ),

        // todo -> details content
        Positioned.fill(
          top: 250,
          left: 160,
          child: Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: 900,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DefaultTextStyle(
                    style: GoogleFonts.nunito(
                      color: AppColors.colorBlack,
                      fontSize: 32.0,
                      fontWeight: FontWeight.w500,
                    ),
                    child: AnimatedTextKit(
                      repeatForever: true,
                      pause: const Duration(seconds: 3),
                      animatedTexts: [
                        TypewriterAnimatedText("Hi! I'm Mirza Mahmud Hossan", speed: const Duration(milliseconds: 60)),
                      ],
                    ),
                  ),
                  const Gap(4),
                  Text(
                    "Flutter Developer",
                    style: GoogleFonts.nunito(
                        color: AppColors.colorRoyalBlue,
                        fontSize: 64,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  const Gap(12),
                  Text(
                    "I'm enthusiastic about developing Mobile Applications and who loves to code. With experience in Flutter & Firebase. "
                        "Flutter is great for Mobile application development for both Android and iOS. "
                        "I like to use Flutter for my work.",
                    style: GoogleFonts.nunito(
                        color: AppColors.colorBlack.withOpacity(0.6),
                        fontSize: 18,
                        fontWeight: FontWeight.normal
                    ),
                  ),
                  const Gap(32),
                  Row(
                    children: [
                      // my resume
                      CustomElevatedButton(
                        buttonWidth: 200,
                        onPressed: () async{
                          final Uri url = Uri.parse("https://drive.google.com/file/d/1GlIcq388z22Tz9XHiRA3I0ik3dKNYcXO/view?usp=sharing");
                          if(!await launchUrl(url, mode: LaunchMode.inAppBrowserView)){
                            throw Exception('Could not launch $url');
                          }
                        },
                        buttonText: "My Resume",
                        buttonColor: AppColors.colorRoyalBlue,
                      ),
                      const Gap(12),

                      // hire me
                      CustomElevatedButton(
                          buttonWidth: 200,
                          onPressed: () async{
                            // final Uri url = Uri.parse("https://shorturl.at/tvCJQ");
                            // if(!await launchUrl(url, mode: LaunchMode.inAppBrowserView)){
                            //   throw Exception('Could not launch $url');
                            // }
                          },
                          buttonText: "Hire Me Now"
                      ),
                    ],
                  ),
                  const Gap(80),

                  // follow me
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Follow Me On",
                            style: GoogleFonts.nunito(
                              color: AppColors.colorBlack,
                              fontSize: 20,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          const Gap(8),
                          Expanded(
                            child: Container(
                              width: 600,
                              height: 1.5,
                              decoration: BoxDecoration(
                                color: AppColors.colorBlack,
                                borderRadius: BorderRadius.circular(20)
                              ),
                            ),
                          )
                        ],
                      ),
                      const Gap(16),
                      Row(
                        children: [
                          // email
                          IconButton(
                            onPressed: () async{
                              final Uri url = Uri.parse("https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox?compose=new");
                              if(!await launchUrl(url, mode: LaunchMode.inAppBrowserView)){
                                throw Exception('Could not launch $url');
                              }
                            },
                            iconSize: 64,
                            color: AppColors.colorRoyalBlue,
                            alignment: Alignment.center,
                            icon: Image.asset(AppIcons.emailIcon, height: 32, width: 32),
                          ),
                          const Gap(12),

                          // calender
                          IconButton(
                            onPressed: () async{
                              final Uri url = Uri.parse("https://calendly.com/mirzamahmud-dev/30min");
                              if(!await launchUrl(url, mode: LaunchMode.inAppBrowserView)){
                                throw Exception('Could not launch $url');
                              }
                            },
                            iconSize: 64,
                            color: AppColors.colorRoyalBlue,
                            alignment: Alignment.center,
                            icon: Image.asset(AppIcons.calendarIcon, height: 32, width: 32),
                          ),
                          const Gap(12),

                          // linkedin
                          IconButton(
                            onPressed: () async{
                              final Uri url = Uri.parse("https://linkedin.com/in/mirzamahmudhossan/");
                              if(!await launchUrl(url, mode: LaunchMode.inAppBrowserView)){
                                throw Exception('Could not launch $url');
                              }
                            },
                            iconSize: 64,
                            color: AppColors.colorRoyalBlue,
                            alignment: Alignment.center,
                            icon: Image.asset(AppIcons.linkedinIcon, height: 32, width: 32),
                          ),
                          const Gap(12),

                          // github
                          IconButton(
                            onPressed: () async{
                              final Uri url = Uri.parse("https://github.com/mirzamahmud");
                              if(!await launchUrl(url, mode: LaunchMode.inAppBrowserView)){
                                throw Exception('Could not launch $url');
                              }
                            },
                            iconSize: 64,
                            color: AppColors.colorRoyalBlue,
                            alignment: Alignment.center,
                            icon: Image.asset(AppIcons.githubIcon, height: 32, width: 32),
                          ),
                          const Gap(12),

                          // stackoverflow
                          IconButton(
                            onPressed: () async{
                              final Uri url = Uri.parse("https://stackoverflow.com/users/19278134/mirza-mahmud-hossan");
                              if(!await launchUrl(url, mode: LaunchMode.inAppBrowserView)){
                                throw Exception('Could not launch $url');
                              }
                            },
                            iconSize: 64,
                            color: AppColors.colorRoyalBlue,
                            alignment: Alignment.center,
                            icon: Image.asset(AppIcons.stackoverflowIcon, color: AppColors.colorBlack, height: 32, width: 32),
                          ),
                          const Gap(12),

                          // facebook
                          IconButton(
                            onPressed: () async{
                              final Uri url = Uri.parse("https://www.facebook.com/piyash.mirza.1");
                              if(!await launchUrl(url, mode: LaunchMode.inAppBrowserView)){
                                throw Exception('Could not launch $url');
                              }
                            },
                            iconSize: 64,
                            color: AppColors.colorRoyalBlue,
                            alignment: Alignment.center,
                            icon: Image.asset(AppIcons.facebookIcon, color: AppColors.colorBlack, height: 32, width: 32),
                          ),
                          const Gap(12),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
