import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mirza_mahmud/utils/color/app_colors.dart';
import 'package:mirza_mahmud/utils/image/app_images.dart';
import 'package:mirza_mahmud/view/widgets/buttons/custom_elevated_button.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.colorWhite,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0)
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(top: 40, start: 24, end: 24),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(AppImages.appLogo, height: 40, width: 40),
                    IconButton(
                      alignment: Alignment.center,
                      onPressed: () => Get.back(),
                      iconSize: 18,
                      color: AppColors.colorBlue,
                      icon: const Icon(Icons.clear, color: AppColors.colorBlack),
                    )
                  ],
                ),
                const Gap(16),
                const Divider(color: AppColors.colorAsh, height: 0.5),
                const Gap(16),
              ],
            )
          ),

          // drawer buttons
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsetsDirectional.only(start: 24, end: 24, bottom: 20),
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // TODO: home button
                  TextButton(
                    onPressed: () => Get.back(),
                    style: TextButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Home", style: GoogleFonts.nunito(color: AppColors.colorBlack, fontSize: 16, fontWeight: FontWeight.w600)),
                        const Icon(Icons.arrow_forward_ios, color: AppColors.colorBlack, size: 16)
                      ],
                    ),
                  ),
                  const Gap(12),
                  // TODO: about button
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("About", style: GoogleFonts.nunito(color: AppColors.colorBlack, fontSize: 16, fontWeight: FontWeight.w600)),
                        const Icon(Icons.arrow_forward_ios, color: AppColors.colorBlack, size: 16)
                      ],
                    ),
                  ),
                  const Gap(12),
                  // TODO: skills button
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Skills", style: GoogleFonts.nunito(color: AppColors.colorBlack, fontSize: 16, fontWeight: FontWeight.w600)),
                        const Icon(Icons.arrow_forward_ios, color: AppColors.colorBlack, size: 16)
                      ],
                    ),
                  ),
                  const Gap(12),
                  // TODO: projects button
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Portfolios", style: GoogleFonts.nunito(color: AppColors.colorBlack, fontSize: 16, fontWeight: FontWeight.w600)),
                        const Icon(Icons.arrow_forward_ios, color: AppColors.colorBlack, size: 16)
                      ],
                    ),
                  ),
                  const Gap(16),
                  const Divider(color: AppColors.colorAsh, height: 0.5),
                  const Gap(16),
            
                  InkWell(
                    onTap: (){},
                    borderRadius: BorderRadius.circular(4),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.symmetric(vertical: 8, horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Follow Me",
                            style: GoogleFonts.nunito(
                                color: AppColors.colorRoyalBlue,
                                fontSize: 16,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                          const Icon(Icons.arrow_forward_ios, color: AppColors.colorRoyalBlue, size: 16)
                        ],
                      ),
                    ),
                  ),
            
                  const Gap(16),
                  const Divider(color: AppColors.colorAsh, height: 0.5),
                  const Gap(16),
            
                  Column(
                    children: [
                      CustomElevatedButton(
                          buttonHeight: 48,
                          buttonWidth: Get.width,
                          buttonColor: AppColors.colorRoyalBlue,
                          onPressed: (){},
                          buttonText: "Pub Packages"
                      ),
                      const Gap(16),
                      CustomElevatedButton(
                          buttonHeight: 48,
                          buttonWidth: Get.width,
                          onPressed: (){},
                          buttonText: "Contact Me"
                      ),
                      const Gap(16),
                      const Divider(color: AppColors.colorAsh, height: 0.5),
                    ],
                  ),
            
                  const Gap(24),
                  // TODO: bottom section
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(Icons.copyright, color: AppColors.colorGrey, size: 14),
                            const Gap(8),
                            Text(
                              "2024 All rights reserved",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.nunito(
                                  color: AppColors.colorGrey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400
                              ),
                            )
                          ],
                        ),
                        const Gap(4),
                        InkWell(
                          onTap: _launchUrl,
                          borderRadius: BorderRadius.circular(4),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "Built with Flutter by ",
                                        style: GoogleFonts.nunito(
                                            color: AppColors.colorGrey,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400
                                        )
                                    ),
                                    TextSpan(
                                        text: "Mirza Mahmud",
                                        style: GoogleFonts.nunito(
                                            color: AppColors.colorRoyalBlue,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            decoration: TextDecoration.underline
                                        )
                                    )
                                  ]
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _launchUrl() async{
    final Uri url = Uri.parse("https://linkedin.com/in/mirzamahmudhossan");
    if(!await launchUrl(url, mode: LaunchMode.inAppBrowserView)){
      throw Exception('Could not launch $url');
    }
  }
}
