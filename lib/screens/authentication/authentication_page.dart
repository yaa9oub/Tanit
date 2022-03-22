import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tanitapp/screens/authentication/authentication_controller.dart';
import 'package:tanitapp/style/assets.dart';
import 'package:tanitapp/style/colors.dart';
import 'package:tanitapp/style/text.dart';
import 'package:tanitapp/widgets/buttons.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: GetBuilder<AuthenticationController>(
          init: AuthenticationController(),
          initState: (_) {},
          builder: (controller) {
            return Container(
              width: size.width,
              height: size.height,
              color: AppColors.whiteColor,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 85,
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
                      height: 56.5,
                    ),
                    Image.asset(
                      Assets.tanit,
                      width: 200.w,
                      height: 298.h,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    SizedBox(
                      width: 327.w,
                      height: 51.h,
                      child: TextField(
                        style: AppTextStyle.subTitleTextStyle,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                 color: Color(0xffEDECF4), width: 1.0),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                         hintText: 'اسم االمستخدم',
                          hintStyle: const TextStyle(
                          color: Color(0xff7B6BA8),
                              fontSize: 22,
                              fontFamily: 'Hacen',
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      width: 327.w,
                      height: 51.h,
                      child: TextField(
                        obscureText: true,
                        obscuringCharacter: "*",
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                 color: Color(0xffEDECF4), width: 1.0),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          hintText: 'كلمة السر',
                          hintStyle: const TextStyle(
                              color: Color(0xff7B6BA8),
                              fontSize: 22,
                              fontFamily: 'Hacen',
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      width: 327.w,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            textStyle: AppTextStyle.subTitleTextStyle,
                          ),
                          onPressed: () {},
                          child: const Text(
                            'نسيت كلمت السر',
                            style: TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: 12,
                                fontFamily: 'Hacen',
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    PrimaryButton(
                      title: "دخول",
                      onclick: () {},
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
