import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:mirza_mahmud/utils/animation/app_animations.dart';
import 'package:mirza_mahmud/utils/color/app_colors.dart';
import 'package:mirza_mahmud/utils/image/app_images.dart';

class DesktopAboutSection extends StatelessWidget {

  const DesktopAboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // todo -> top anim
        Positioned(
          top: -50,
          right: -150,
          child: Lottie.asset(AppAnimations.lottieCircleAnim, height: 400, width: 400),
        ),
        // todo -> bottom anim
        Positioned(
          bottom: -125,
          left: -250,
          child: Lottie.asset(AppAnimations.lottieCircleAnim, height: 800, width: 800),
        ),
        // todo -> content
        Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 160),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // todo -> image
              Image.asset(AppImages.ownImage),
              const Gap(100),

              // todo -> content
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          "About Me",
                          style: GoogleFonts.nunito(
                              color: AppColors.colorBlack.withOpacity(0.6),
                              fontSize: 20,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                        const Gap(12),
                        Container(
                          height: 1.5, width: 150,
                          color: AppColors.colorBlack.withOpacity(0.6),
                        ),
                      ],
                    ),

                    const Gap(16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "DO YOU HAVE AN IDEA FOR AN APP?",
                          style: GoogleFonts.nunito(
                              color: AppColors.colorBlack,
                              fontSize: 36,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                        const Gap(4),
                        Text(
                          "Let's finish it now....",
                          style: GoogleFonts.nunito(
                              color: AppColors.colorBlack,
                              fontSize: 36,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                      ],
                    ),

                    const Gap(32),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "Hi there! ",
                            style: GoogleFonts.nunito(
                                color: AppColors.colorBlack.withOpacity(0.6),
                                fontSize: 18,
                                fontWeight: FontWeight.normal
                            )
                        ),
                        const Gap(4),
                        Text(
                            "I am Mirza Mahmud Hossan and I love to explore myself. "
                                "I explore lots of fields. At some moments, my interest grows in the development sector.",
                            style: GoogleFonts.nunito(
                                color: AppColors.colorBlack.withOpacity(0.6),
                                fontSize: 18,
                                fontWeight: FontWeight.normal
                            )
                        ),
                        const Gap(4),
                        RichText(
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(
                              children:[
                                TextSpan(
                                    text: "I have 3 years of expertise in developing mobile applications using Flutter and Firebase. ",
                                    style: GoogleFonts.nunito(
                                        color: AppColors.colorRoyalBlue,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500
                                    )
                                ),
                                TextSpan(
                                    text: "Additionally skilled at creating websites using Flutter. "
                                        "I curate your app and give it life with my extensive and profound Flutter experience. "
                                        "Let's bring your idea to reality.",
                                    style: GoogleFonts.nunito(
                                        color: AppColors.colorBlack.withOpacity(0.6),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500
                                    )
                                ),
                              ]
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
