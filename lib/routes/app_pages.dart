import 'package:get/get.dart';
import 'package:tanitapp/binding/home_binding.dart';
import 'package:tanitapp/routes/app_routes.dart';
import 'package:tanitapp/screens/home/home_page.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.initial,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
