import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:mirza_mahmud/utils/animation/app_animations.dart';
import 'package:mirza_mahmud/utils/color/app_colors.dart';
import 'package:mirza_mahmud/utils/icon/app_icons.dart';
import 'package:mirza_mahmud/utils/image/app_images.dart';
import 'package:mirza_mahmud/view/widgets/buttons/custom_elevated_button.dart';
import 'package:mirza_mahmud/view/widgets/drawer/custom_drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileScreenLayout extends StatefulWidget {
  const MobileScreenLayout({super.key});

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout> {

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: AppColors.colorWhite,
        drawer: const CustomDrawer(),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            alignment: Alignment.center,
            onPressed: () => scaffoldKey.currentState?.openDrawer(),
            icon: Image.asset(AppIcons.menuIcon, color: AppColors.colorBlack, height: 24, width: 24),
          ),
          centerTitle: true,
          title: Text("Mirza Mahmud", style: GoogleFonts.pacifico(
            color: AppColors.colorRoyalBlue,
            fontSize: 24,
            fontWeight: FontWeight.w700
          )),
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
            systemNavigationBarColor: AppColors.colorWhite,
            systemNavigationBarIconBrightness: Brightness.dark
          ),
        ),
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            // todo -> top anim
            Positioned(
              top: -220,
              right: -150,
              child: Lottie.asset(AppAnimations.lottieCircleAnim, height: 500, width: 500),
            ),
            // todo -> bottom anim
            Positioned(
              bottom: -60,
              left: -100,
              child: Lottie.asset(AppAnimations.lottieCircleAnim, height: 300, width: 300),
            ),

            // todo -> content
            Align(
              alignment: Alignment.topCenter,
              child: SingleChildScrollView(
                padding: const EdgeInsetsDirectional.symmetric(vertical: 20),
                child: Column(
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(2.2, 0),
                      child: Container(
                        width: 300, height: 300,
                        padding: const EdgeInsetsDirectional.symmetric(vertical: 4, horizontal: 4),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: AppColors.colorRoyalBlue, width: 4)
                        ),
                        child: Container(
                          height: 300, width: 300,
                          decoration: const BoxDecoration(
                              image: DecorationImage(image: AssetImage(AppImages.myImage), fit: BoxFit.cover),
                              shape: BoxShape.circle
                          ),
                        ),
                      ),
                    ),
                    const Gap(16),
                    Padding(
                      padding: const EdgeInsetsDirectional.symmetric(horizontal: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DefaultTextStyle(
                            style: GoogleFonts.nunito(
                              color: AppColors.colorBlack,
                              fontSize: 20.0,
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
                                fontSize: 32,
                                fontWeight: FontWeight.w700
                            ),
                          ),
                          const Gap(8),
                          Text(
                            "I'm enthusiastic about designing and creating Mobile Applications and who loves to code. I've been working with Flutter and Firebase from past 3 years. "
                                "With experience in Flutter & Firebase my personal opinion, Flutter is great for Mobile application development for both Android and iOS. "
                                "I like to use Flutter for my work.",
                            style: GoogleFonts.nunito(
                                color: AppColors.colorGrey,
                                fontSize: 14,
                                fontWeight: FontWeight.normal
                            ),
                          ),
                          const Gap(16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: CustomElevatedButton(
                                  buttonWidth: Get.width,
                                  onPressed: () async{
                                    final Uri url = Uri.parse("https://drive.google.com/file/d/1TxRcLYorts3L2A74WLssqKnlg4UkzxU1/view?usp=sharing");
                                    if(!await launchUrl(url, mode: LaunchMode.inAppBrowserView)){
                                      throw Exception('Could not launch $url');
                                    }
                                  },
                                  buttonText: "My Resume",
                                  buttonColor: AppColors.colorRoyalBlue,
                                ),
                              ),
                              const Gap(12),
                              Expanded(
                                child: CustomElevatedButton(
                                    buttonWidth: Get.width,
                                    onPressed: () async{
                                      final Uri url = Uri.parse("https://shorturl.at/tvCJQ");
                                      if(!await launchUrl(url, mode: LaunchMode.inAppBrowserView)){
                                        throw Exception('Could not launch $url');
                                      }
                                    },
                                    buttonText: "Hire Me Now"
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
