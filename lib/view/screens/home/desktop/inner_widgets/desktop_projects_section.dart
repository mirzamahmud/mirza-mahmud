import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:mirza_mahmud/utils/animation/app_animations.dart';
import 'package:mirza_mahmud/utils/color/app_colors.dart';
import 'package:mirza_mahmud/view/screens/home/controller/home_controller.dart';

class DesktopProjectSection extends StatelessWidget {

  const DesktopProjectSection({super.key});

  @override
  Widget build(BuildContext context) {

    return GetBuilder<HomeController>(
      builder: (controller) {
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
                    itemBuilder: (context, index) => Stack(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: const DecorationImage(image: AssetImage("assets/projects/ezyrack.png"), fit: BoxFit.fill),
                          ),
                        ),
                        MouseRegion(
                          onExit: (onPointerExist) => controller.mousePointerExist(onPointerExist),
                          onHover: (mousePointerHover) => controller.mousePointerHoverEvent(mousePointerHover, index),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(16),
                            onTap: () => showDialog(
                              barrierDismissible: false,
                              context: context,
                              builder: (context) => Dialog(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 200, width: 200,
                                  color: AppColors.colorWhite,
                                ),
                              )
                            ),
                            child: Container(
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: index == controller.selectedIndex ? AppColors.colorRoyalBlue.withOpacity(0.8) : AppColors.colorBlack.withOpacity(0.6),
                                borderRadius: BorderRadius.circular(16)
                              ),
                              child: index == controller.selectedIndex ? Text(
                                "View Details",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.nunito(
                                  color: AppColors.colorWhite,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500
                                ),
                              ) : null,
                            ),
                          ),
                        ),
                      ],
                    )
                  ),
                  const Gap(32),
                  // todo -> button
                  Align(
                    alignment: Alignment.center,
                    child: MouseRegion(
                      onHover: (onHoverEvent){
                        controller.onSeeMoreButtonHover(onHoverEvent);
                      },
                      onExit: (onExitEvent){
                        controller.onSeeMoreButtonHoverExit(onExitEvent);
                      },
                      child: InkWell(
                        borderRadius: BorderRadius.circular(100),
                        onTap: (){},
                        child: Container(
                          height: 48, width: 48,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: controller.isSeeMoreHover ? AppColors.colorRoyalBlue : AppColors.colorWhite,
                            shape: BoxShape.circle,
                            border: controller.isSeeMoreHover ? null : Border.all(color: AppColors.colorAsh, width: 2),
                          ),
                          child: Icon(
                            Icons.arrow_forward_rounded,
                            color: controller.isSeeMoreHover ? AppColors.colorWhite :AppColors.colorAsh,
                            size: 24,
                          )
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        );
      }
    );
  }
}
