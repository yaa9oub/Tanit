import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tanitapp/screens/onBoardingScreen/model.dart';
import 'package:tanitapp/screens/onBoardingScreen/onBoardingScreenController.dart';

import 'package:tanitapp/style/assets.dart';
import 'package:tanitapp/style/colors.dart';
import 'package:tanitapp/style/text.dart';
import 'package:tanitapp/widgets/buttons.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final indicator_controller = PageController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: GetBuilder<OnBoardingScreenController>(
        init: OnBoardingScreenController(),
        initState: (_) {},
        builder: (controller) {
          return SizedBox(
            width: size.width,
            height: size.height,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                     SizedBox(
                      height: 47.h,
                    ),
                    const Center(
                      child: Text(
                        "أدوات منع الحمل",
                        style: AppTextStyle.titleTextStyle,
                      ),
                    ),
                     SizedBox(
                      height: 8.h,
                    ),
                    SizedBox(
                      height: 723.h,

                      child: PageView.builder(
                        controller: indicator_controller,
                        itemCount: contents.length,
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8.0, bottom: 43),
                                child: SizedBox(
                                  width: 343.w,
                                  height: 344.h,
                                  child: Image.asset(contents[index].image),
                                ),
                              ),
                              builDot(),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 16.0),
                                child: Text(contents[index].title,
                              textAlign:TextAlign.center,

                                    style: AppTextStyle.titleTextStyle),
                              ),
                              Text(contents[index].description,
                              textAlign:TextAlign.center,

                                  style: AppTextStyle.descriptionTextStyle),
                              Text(contents[index].utilisation,
                              textAlign:TextAlign.center,
                                  style: index==1? AppTextStyle.warningTextStyle:AppTextStyle.descriptionTextStyle),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: ThirdButton(
                                  title: "مفهوم",
                                  onclick: () {},
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  builDot() {
    return SmoothPageIndicator(
        controller: indicator_controller, // PageController
        count: 3,
        effect: const SlideEffect(
            spacing: 6.0,
            dotWidth: 6.0,
            dotHeight: 6.0,
            dotColor: AppColors.lightGreyColor,
            activeDotColor: AppColors.primaryColor), // your preferred effect
        onDotClicked: (index) {});
  }
}
