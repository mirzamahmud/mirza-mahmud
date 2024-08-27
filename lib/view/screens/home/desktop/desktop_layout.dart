import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mirza_mahmud/utils/color/app_colors.dart';
import 'package:mirza_mahmud/utils/image/app_images.dart';
import 'package:mirza_mahmud/view/screens/home/controller/home_controller.dart';
import 'package:mirza_mahmud/view/screens/home/desktop/inner_widgets/desktop_about_section.dart';
import 'package:mirza_mahmud/view/screens/home/desktop/inner_widgets/desktop_home_section.dart';
import 'package:mirza_mahmud/view/screens/home/desktop/inner_widgets/desktop_projects_section.dart';
import 'package:mirza_mahmud/view/screens/home/desktop/inner_widgets/desktop_skill_section.dart';
import 'package:mirza_mahmud/view/widgets/buttons/custom_elevated_button.dart';
import 'package:url_launcher/url_launcher.dart';

class DesktopScreenLayout extends StatelessWidget {
  const DesktopScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.colorWhite,
          body: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // todo -> navigation menu
              Container(
                width: Get.width,
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 160, vertical: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(AppImages.appLogo, height: 40, width: 40),
                        const Gap(12),
                        Text(
                          "Mirza",
                          style: GoogleFonts.pacifico(
                            color: AppColors.colorBlack,
                            fontSize: 24,
                            fontWeight: FontWeight.w700
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: List.generate(controller.navigatorList.length - 1, (index) => Padding(
                        padding: index == controller.navigatorList.length - 1 ? EdgeInsetsDirectional.zero : const EdgeInsetsDirectional.only(end: 24),
                        child: TextButton(
                          onPressed: () => controller.scrollToSection(controller.navigatorList[index].navigatorKey.currentContext ?? context),
                          child: Text(
                            controller.navigatorList[index].navigatorTitle,
                            style: GoogleFonts.nunito(
                              color: AppColors.colorBlack,
                              fontSize: 14,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ),
                      )),
                    ),
                    Row(
                      children: [
                        PopupMenuButton(
                          elevation: 0,
                          position: PopupMenuPosition.under,
                          offset: const Offset(0, 10),
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              onTap: () async{
                                final Uri url = Uri.parse("https://pub.dev/packages/qr_scanner_with_effect");
                                if(!await launchUrl(url, mode: LaunchMode.inAppBrowserView)){
                                  throw Exception('Could not launch $url');
                                }
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "QR Scanner with Effect",
                                    style: GoogleFonts.nunito(
                                        color: AppColors.colorWhite,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios_sharp,
                                    color: AppColors.colorWhite,
                                    size: 14,
                                  )
                                ],
                              ),
                            ),
                            PopupMenuItem(
                              onTap: () async{
                                final Uri url = Uri.parse("https://pub.dev/packages/api_service_interceptor");
                                if(!await launchUrl(url, mode: LaunchMode.inAppBrowserView)){
                                  throw Exception('Could not launch $url');
                                }
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "API Service Interceptor",
                                    style: GoogleFonts.nunito(
                                        color: AppColors.colorWhite,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios_sharp,
                                    color: AppColors.colorWhite,
                                    size: 14,
                                  )
                                ],
                              )
                            )
                          ],
                          color: AppColors.colorRoyalBlue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Container(
                            height: 40, width: 200,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: AppColors.colorWhite,
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(color: AppColors.colorRoyalBlue, width: 1)
                            ),
                            child: Text(
                              "Pub Packages",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                color: AppColors.colorRoyalBlue,
                                fontSize: 14,
                                fontWeight: FontWeight.w500
                              ),
                            )
                          ),
                        ),
                        const Gap(16),
                        CustomElevatedButton(
                          buttonHeight: 48,
                          buttonWidth: 200,
                          onPressed: () => controller.scrollToSection(controller.navigatorList[4].navigatorKey.currentContext!),
                          buttonText: controller.navigatorList[4].navigatorTitle
                        ),
                      ],
                    )
                  ],
                ),
              ),

              // todo -> body
              Expanded(
                child: Scrollbar(
                  thickness: 5,
                  controller: controller.scrollController,
                  trackVisibility: true,
                  child: SingleChildScrollView(
                    physics: const ScrollPhysics(),
                    controller: controller.scrollController,
                    child: Column(
                      children: [
                
                        // todo -> home section
                        SizedBox(
                          height: 900,
                          width: MediaQuery.of(context).size.width,
                          key: controller.navigatorList[0].navigatorKey,
                          child: const DesktopHomeSection(),
                        ),
                
                        // todo -> about section
                        SizedBox(
                          height: 900,
                          width: MediaQuery.of(context).size.width,
                          key: controller.navigatorList[1].navigatorKey,
                          child: const DesktopAboutSection(),
                        ),
                
                        // todo -> skill section
                        SizedBox(
                          height: 900,
                          width: MediaQuery.of(context).size.width,
                          key: controller.navigatorList[2].navigatorKey,
                          child: const DesktopSkillSection(),
                        ),
                
                        // todo -> portfolio section
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          key: controller.navigatorList[3].navigatorKey,
                          child: const DesktopProjectSection(),
                        ),
                
                        // todo -> contact me section
                        Container(
                          height: 900,
                          width: MediaQuery.of(context).size.width,
                          key: controller.navigatorList[4].navigatorKey,
                          alignment: Alignment.center,
                          child: const Text("Contact Me"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
