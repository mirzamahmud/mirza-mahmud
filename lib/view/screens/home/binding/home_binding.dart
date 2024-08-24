import 'package:get/get.dart';
import 'package:mirza_mahmud/view/screens/home/controller/home_controller.dart';

class HomeBinding extends Bindings{
  HomeBinding();

  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}