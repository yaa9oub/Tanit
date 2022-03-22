import 'package:get/get.dart';
import 'package:tanitapp/screens/authentication/authentication_controller.dart';

class AuthenticationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthenticationController>(() => AuthenticationController());
  }
}