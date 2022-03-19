import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tanitapp/screens/mainpage/mainpage_controller.dart';
import 'package:tanitapp/style/assets.dart';
import 'package:tanitapp/style/colors.dart';
import 'package:tanitapp/style/text.dart';
import 'package:tanitapp/widgets/mainpagebuttons.dart';

class Mainpage extends StatelessWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: GetBuilder<MainpageController>(
          init: MainpageController(),
          initState: (_) {},
          builder: (controller) {
            return Container(
              width: size.width,
              height: size.height,
              color: AppColors.whiteColor,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 68.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          '👋👋 ! مرحبا هالة',
                          style: AppTextStyle.subTitleTextStyle,
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            width: 46.w,
                            height: 46.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: AppColors.lightGreyColor,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                Assets.profile,
                                height: 30.h,
                                width: 30.w,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 82.h,
                    ),
                    MainPageButton(
                      image: Assets.stomach,
                      title: "أبحث عن وسيلة\nلمنع الحمل",
                      onclick: () {},
                    ),
                    SizedBox(
                      height: 43.h,
                    ),
                    MainPageButton(
                      image: Assets.check,
                      title: "أتابع وسيلتي لمنع\nالحمل",
                      onclick: () {},
                    ),
                    SizedBox(
                      height: 43.h,
                    ),
                    MainPageButton(
                      image: Assets.sirum,
                      title: "أريد الإجهاض",
                      onclick: () {},
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
