import 'package:get/get.dart';
import 'package:tanitapp/screens/on_boarding_screen/on_boarding_screen_controller.dart';

class ObsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnBoardingScreenController>(() => OnBoardingScreenController());
  }
}
