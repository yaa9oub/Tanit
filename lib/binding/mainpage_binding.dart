import 'package:get/get.dart';
import 'package:tanitapp/screens/mainpage/mainpage_controller.dart';

class MainpageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainpageController>(() => MainpageController());
  }
}
