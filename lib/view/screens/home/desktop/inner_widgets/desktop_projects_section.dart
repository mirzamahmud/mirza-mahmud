import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:mirza_mahmud/utils/animation/app_animations.dart';
import 'package:mirza_mahmud/utils/color/app_colors.dart';

class DesktopProjectSection extends StatelessWidget {

  const DesktopProjectSection({super.key});

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
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 160, vertical: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // todo -> section title
              Row(
                children: [
                  Text(
                    "My Projects",
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
              const Gap(32),

              // todo -> content details
              GridView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 1,
                  mainAxisExtent: 500
                ),
                itemBuilder: (context, index) => Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: AppColors.colorAsh,
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 350,
                        decoration: const BoxDecoration(
                            color: AppColors.colorBlack,
                            borderRadius: BorderRadius.vertical(top: Radius.circular(16))
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 16),
                        child: Row(
                          children: [
                            Flexible(
                              child: Text(
                                "There are many variations of passages of Lorem Ipsum available, "
                                    "but the majority have suffered alteration in some form, by injected humour, "
                                    "or randomised words which don't look even slightly believable. "
                                    "If you are going to use a passage of Lorem Ipsum, "
                                    "you need to be sure there isn't anything embarrassing hidden in the middle of text.",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 4,
                                style: GoogleFonts.nunito(
                                    color: AppColors.colorBlack.withOpacity(0.6),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                            )
                          ],
                        )
                      )
                    ],
                  ),
                )
              ),
              const Gap(64),

              // todo -> button
            ],
          ),
        )
      ],
    );
  }
}
