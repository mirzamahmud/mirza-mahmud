import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                  mainAxisExtent: 400
                ),
                itemBuilder: (context, index) => Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: const DecorationImage(image: AssetImage("assets/projects/ezyrack.png"), fit: BoxFit.fill),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(2, 2),
                        blurRadius: 20,
                      ),
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(-2, -2),
                        blurRadius: 20,
                      )
                    ]
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
