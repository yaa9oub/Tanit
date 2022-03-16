import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tanitapp/screens/home/home_controller.dart';
import 'package:tanitapp/style/assets.dart';
import 'package:tanitapp/style/colors.dart';
import 'package:tanitapp/style/text.dart';
import 'package:tanitapp/widgets/buttons.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: GetBuilder<HomeController>(
          init: HomeController(),
          initState: (_) {},
          builder: (controller) {
            return Container(
              width: size.width,
              height: size.height,
              color: AppColors.whiteColor,
              child: Column(
                children: [
                  SizedBox(
                    height: 74.h,
                  ),
                  const Text(
                    "مرحبا بك",
                    style: AppTextStyle.subTitleTextStyle,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text("في تطبيق تانيت",
                      style: AppTextStyle.titleTextStyle),
                  const SizedBox(
                    height: 55,
                  ),
                  Image.asset(
                    Assets.tanit,
                    width: 200.w,
                    height: 298.h,
                  ),
                  const SizedBox(
                    height: 113,
                  ),
                  PrimaryButton(
                    title: "تسجيل حساب جديد",
                    onclick: () {},
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SecondaryAppButton(
                    title: "دخول",
                    onclick: () {},
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SecondaryAppButton(
                    title: "تخطي",
                    onclick: () {},
                  ),
                ],
              ),
            );
          }),
    );
  }
}
