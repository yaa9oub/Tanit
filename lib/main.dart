import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tanitapp/routes/app_pages.dart';
import 'package:tanitapp/routes/app_routes.dart';

void main() {
  runApp(GetApp());
}

class GetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        //initialRoute: Routes.initial,
        initialRoute: Routes.boardingScreen,

        defaultTransition: Transition.fade,
        getPages: AppPages.pages,
        enableLog: true,
        opaqueRoute: Get.isOpaqueRouteDefault,
        popGesture: Get.isPopGestureEnable,
        // transitionDuration: Duration(milliseconds: 300),
      ),
    );
  }
}
