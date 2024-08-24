import 'package:flutter/cupertino.dart';

class HomeNavigatorModel{

  HomeNavigatorModel({
    required this.navigatorTitle,
    required this.navigatorKey
  });

  final String navigatorTitle;
  final GlobalKey navigatorKey;
}