import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanitapp/style/assets.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:tanitapp/style/text.dart';

List<PageViewModel> getPages() {
  return [
    PageViewModel(
        title: 'حبوب البروجيستيرون',
        image: const Image(
            image: AssetImage(
          Assets.on_boarding_screen_1,
        )),
        body: """تحتوي حبوب البروجيستيرون على هرمون البروجيستيرون فقط
     تؤخذ مرة في اليوم في نفس الوقت دون إنقطاع""",
        decoration: getPageDecoration()),
    PageViewModel(
      title: 'الواقي الذكري',
      image: const Image(image: AssetImage(Assets.on_boarding_screen_2)),
      bodyWidget: Column(
        children: [
          const Text(
            'غلاف رفيع يوضع فوق القضيب المنتصب',
            style: AppTextStyle.descriptionTextStyle,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30.h),
          const Text(
              'إستخدام الواقي الذكري يحمي أيضا من الإصابة بالتعفنات المنقولة جنسيا',
              style: AppTextStyle.warningTextStyle,
              textAlign: TextAlign.center),
        ],
      ),
      decoration: getPageDecoration(),
    ),
    PageViewModel(
      title: 'الآلة الرحمية',
      image: const Image(image: AssetImage(Assets.on_boarding_screen_3)),
      body: """ : يوضع داخل الرحم و يوجد نوعان
       الآلة الرحمية الهرمونية 
       الآلة الرحمية  النحاسية""",
      decoration: getPageDecoration(),
    ),
  ];
}
PageDecoration getPageDecoration() => const PageDecoration(
      titleTextStyle: AppTextStyle.titleTextStyle,
      imagePadding: EdgeInsets.only(top: 30),
      titlePadding: EdgeInsets.only(top: 50),
      bodyTextStyle: AppTextStyle.descriptionTextStyle,
    );
