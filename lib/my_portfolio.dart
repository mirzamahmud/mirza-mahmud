import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mirza_mahmud/view/screens/home/binding/home_binding.dart';
import 'package:mirza_mahmud/view/screens/home/home_screen.dart';

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mirza Mahmud Hossan",
      themeMode: ThemeMode.system,
      defaultTransition: Transition.noTransition,
      initialRoute: "/home_screen",
      initialBinding: HomeBinding(),
      getPages: [
        GetPage(name: "/home_screen", page: () => const HomeScreen(), binding: HomeBinding())
      ],
    );
  }
}
