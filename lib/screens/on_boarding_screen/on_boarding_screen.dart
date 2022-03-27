import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tanitapp/screens/on_boarding_screen/on_boarding_screen_content.dart';
import 'package:tanitapp/screens/on_boarding_screen/on_boarding_screen_controller.dart';
import 'package:tanitapp/style/colors.dart';
import 'package:tanitapp/style/text.dart';
import 'package:tanitapp/widgets/buttons.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: GetBuilder<OnBoardingScreenController>(
            init: OnBoardingScreenController(),
            initState: (_) {},
            builder: (controller) {
              return Container(
                width: size.width,
                height: size.height,
                color: AppColors.whiteColor,
                child: Column(
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    const Center(
                        child: Text(
                      'أدوات منع الحمل',
                      style: AppTextStyle.titleTextStyle,
                    )),
                    Expanded(
                      child: IntroductionScreen(
                        globalBackgroundColor: AppColors.whiteColor,
                        pages: getPages(),
                        showSkipButton: false,
                        showNextButton: false,
                        done: const PrimaryButton(
                          heightButton: 34,
                          widthButton: 86,
                          title: "مفهوم",
                          titleStyle: AppTextStyle.smallButtoneTextStyle,
                        ),
                        onDone: (){},
                        dotsDecorator: const DotsDecorator(
                          color: AppColors.lightGreyColor,
                          activeColor: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }));
  }
}
