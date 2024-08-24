import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mirza_mahmud/global/layout/adaptive_layout.dart';
import 'package:mirza_mahmud/view/screens/home/controller/home_controller.dart';
import 'package:mirza_mahmud/view/screens/home/desktop/desktop_layout.dart';
import 'package:mirza_mahmud/view/screens/home/mobile/mobile_layout.dart';
import 'package:mirza_mahmud/view/screens/home/tablet/tablet_layout.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    Get.find<HomeController>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return const AdaptiveLayout(
      mobileScreenLayout: MobileScreenLayout(),
      tabletScreenLayout: TabletScreenLayout(),
      desktopScreenLayout: DesktopScreenLayout()
    );
  }
}
