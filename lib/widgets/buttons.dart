import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanitapp/style/colors.dart';
import 'package:tanitapp/style/text.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({Key? key, required this.title, required this.onclick})
      : super(key: key);
  final String title;
  final VoidCallback onclick;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onclick,
      child: Container(
        width: 327.w,
        height: 51.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.primaryColor,
        ),
        child: Center(
          child: Text(
            title,
            style: AppTextStyle.subTitleWhiteTextStyle,
          ),
        ),
      ),
    );
  }
}

class SecondaryAppButton extends StatelessWidget {
  const SecondaryAppButton(
      {Key? key, required this.title, required this.onclick})
      : super(key: key);
  final String title;
  final VoidCallback onclick;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onclick,
      child: Container(
        width: 327.w,
        height: 51.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(width: 1, color: AppColors.primaryColor)),
        child: Center(
          child: Text(
            title,
            style: AppTextStyle.subTitleTextStyle,
          ),
        ),
      ),
    );
  }
}
class ThirdButton extends StatelessWidget {
  const ThirdButton( {Key? key, required this.title, required this.onclick})
      : super(key: key);
  final String title;
  final VoidCallback onclick;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onclick,
      child: Container(
        width: 90.w,
        height: 34.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.primaryColor,
        ),
        child: Center(
          child: Text(
            title,
            style: AppTextStyle.subTitleWhiteTextStyle,
          ),
        ),
      ),
    );
  }
}
