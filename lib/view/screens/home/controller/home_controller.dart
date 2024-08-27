import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

  // this method is used to create hover functionality
  int selectedIndex = -1;
  void mousePointerHoverEvent(PointerHoverEvent mousePointerHover, int index) {
      selectedIndex = index;
      update();
  }

  mousePointerExist(PointerExitEvent onPointerExist) {
    selectedIndex = -1;
    update();
  }

  //
  bool isSeeMoreHover = false;
  void onSeeMoreButtonHover(PointerHoverEvent onHoverEvent) {
    isSeeMoreHover = true;
    update();
  }

  void onSeeMoreButtonHoverExit(PointerExitEvent onExistHover) {
    isSeeMoreHover = false;
    update();
  }
}