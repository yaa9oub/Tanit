import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanitapp/style/colors.dart';
import 'package:tanitapp/style/text.dart';

class MainPageButton extends StatelessWidget {
  const MainPageButton(
      {Key? key,
      required this.title,
      required this.image,
      required this.onclick})
      : super(key: key);
  final String title;
  final String image;
  final VoidCallback onclick;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onclick,
      child: Container(
        width: 343.w,
        height: 116,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.lightGreyColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 16,
            ),
            SizedBox(
              width: 149.w,
              height: 108,
              child: Center(
                child: Text(
                  title,
                  style: AppTextStyle.mainpagebuttonsTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(
              width: 14,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Image.asset(
                image,
                height: 108,
                width: 144,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
