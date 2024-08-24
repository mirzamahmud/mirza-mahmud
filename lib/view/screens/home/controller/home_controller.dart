import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mirza_mahmud/view/screens/home/models/home_navigator_model.dart';

class HomeController extends GetxController{
  HomeController();

  List<HomeNavigatorModel> navigatorList = [
    HomeNavigatorModel(navigatorTitle: "HOME", navigatorKey: GlobalKey()),
    HomeNavigatorModel(navigatorTitle: "ABOUT", navigatorKey: GlobalKey()),
    HomeNavigatorModel(navigatorTitle: "SKILLS", navigatorKey: GlobalKey()),
    HomeNavigatorModel(navigatorTitle: "PROJECTS", navigatorKey: GlobalKey()),
    HomeNavigatorModel(navigatorTitle: "Contact Me", navigatorKey: GlobalKey()),
  ];

  ScrollController scrollController = ScrollController();
  double progress = 0;

  updateProgress(){
    progress = scrollController.offset / scrollController.position.maxScrollExtent;
    update();
  }

  scrollToSection(BuildContext context) {
    Scrollable.ensureVisible(context, duration: const Duration(microseconds: 400));
  }
}