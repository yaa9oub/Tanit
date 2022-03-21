import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tanitapp/screens/mainpage/mainpage_controller.dart';
import 'package:tanitapp/style/assets.dart';
import 'package:tanitapp/style/colors.dart';
import 'package:tanitapp/style/text.dart';
import 'package:tanitapp/widgets/bottomnavbar.dart';
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
          return Stack(
            children: [
              Container(
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
                            style: AppTextStyle.mainpageTextStyle,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Container(
                            width: 46,
                            height: 46,
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
                          SizedBox(
                            width: 16.w,
                          )
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
              ),
              const Positioned(
                bottom: 0,
                child: BottomNavBar(
                  mainPageActiveIcon: true,
                  simpledNavBar: false,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
