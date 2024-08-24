import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:mirza_mahmud/utils/animation/app_animations.dart';
import 'package:mirza_mahmud/utils/color/app_colors.dart';
import 'package:mirza_mahmud/utils/icon/app_icons.dart';

class DesktopSkillSection extends StatelessWidget {

  const DesktopSkillSection({super.key});

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
          bottom: -250,
          left: -300,
          child: Lottie.asset(AppAnimations.lottieCircleAnim, height: 800, width: 800),
        ),
        // todo -> content
        Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 160),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          "My Skills",
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
                          "My Mobile App Development",
                          style: GoogleFonts.nunito(
                              color: AppColors.colorBlack,
                              fontSize: 36,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                        const Gap(4),
                        Text(
                          "Skills Include",
                          style: GoogleFonts.nunito(
                              color: AppColors.colorBlack,
                              fontSize: 36,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                      ],
                    ),

                    const Gap(32),
                    Text(
                        "With vast knowledge and experience in Flutter, Firebase Database and also more.",
                        style: GoogleFonts.nunito(
                            color: AppColors.colorBlack.withOpacity(0.6),
                            fontSize: 18,
                            fontWeight: FontWeight.normal
                        )
                    )
                  ],
                )
              ),
              const Gap(50),
              Expanded(
                child: GridView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    mainAxisExtent: 150,
                    crossAxisCount: 3,
                  ), 
                  children: [
                    // ---------- dart icon ----------------------
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 150,
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsetsDirectional.symmetric(vertical: 16, horizontal: 16),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: AppColors.colorAsh.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(16)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 50, width: 50,
                                child: SvgPicture.asset(AppIcons.dartIcon),
                              ),
                              const Gap(16),
                              Text(
                                "Dart",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.nunito(
                                    color: AppColors.colorBlack,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600
                                ),
                              )
                            ],
                          )
                        ),
                      ],
                    ),

                    // ---------------- flutter icon -----------------
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsetsDirectional.symmetric(vertical: 16, horizontal: 16),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: AppColors.colorAsh.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(16)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 50, width: 50,
                                  child: SvgPicture.asset(AppIcons.flutterIcon),
                                ),
                                const Gap(16),
                                Text(
                                  "Flutter",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.nunito(
                                      color: AppColors.colorBlack,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600
                                  ),
                                )
                              ],
                            )
                        ),
                      ],
                    ),

                    // ---------------- firebase icon -------------------
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsetsDirectional.symmetric(vertical: 16, horizontal: 16),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: AppColors.colorAsh.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(16)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 50, width: 50,
                                  child: SvgPicture.asset(AppIcons.firebaseIcon),
                                ),
                                const Gap(16),
                                Text(
                                  "Firebase",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.nunito(
                                      color: AppColors.colorBlack,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600
                                  ),
                                )
                              ],
                            )
                        ),
                      ],
                    ),

                    // ---------------- REST APIs -------------------
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsetsDirectional.symmetric(vertical: 16, horizontal: 16),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: AppColors.colorAsh.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(16)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 50, width: 50,
                                  child: SvgPicture.asset(AppIcons.apisIcon),
                                ),
                                const Gap(16),
                                Text(
                                  "REST APIs",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.nunito(
                                      color: AppColors.colorBlack,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600
                                  ),
                                )
                              ],
                            )
                        ),
                      ],
                    ),

                    // ---------------- git --------------------------
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsetsDirectional.symmetric(vertical: 16, horizontal: 16),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: AppColors.colorAsh.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(16)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 50, width: 50,
                                  child: SvgPicture.asset(AppIcons.gitIcon),
                                ),
                                const Gap(16),
                                Text(
                                  "Git",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.nunito(
                                      color: AppColors.colorBlack,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600
                                  ),
                                )
                              ],
                            )
                        ),
                      ],
                    ),

                    // ---------------- github --------------------------
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsetsDirectional.symmetric(vertical: 16, horizontal: 16),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: AppColors.colorAsh.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(16)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 50, width: 50,
                                  child: SvgPicture.asset(AppIcons.github),
                                ),
                                const Gap(16),
                                Text(
                                  "GitHub",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.nunito(
                                      color: AppColors.colorBlack,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600
                                  ),
                                )
                              ],
                            )
                        ),
                      ],
                    ),
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
