import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mirza_mahmud/my_portfolio.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyPortfolio());
}