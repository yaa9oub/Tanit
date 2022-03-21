import 'package:flutter/material.dart';
import 'package:tanitapp/style/assets.dart';
import 'package:tanitapp/style/colors.dart';
import 'package:tanitapp/style/text.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar(
      {Key? key,
      this.mainPageActiveIcon,
      this.statisticsActiveIcon,
      this.notificationActiveIcon,
      this.settingsActiveIcon,
      required this.simpledNavBar})
      : super(key: key);
  final bool? mainPageActiveIcon;
  final bool? statisticsActiveIcon;
  final bool? notificationActiveIcon;
  final bool? settingsActiveIcon;
  final bool simpledNavBar;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: simpledNavBar ? 56 : 70,
      width: size.width,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 7,
            offset: const Offset(0, -1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  Assets.home,
                  color: mainPageActiveIcon != null
                      ? AppColors.primaryColor
                      : AppColors.secondaryColor,
                ),
                const SizedBox(
                  height: 10,
                ),
                Visibility(
                  visible: !simpledNavBar,
                  child: Text(
                    'الرئيسية',
                    style: mainPageActiveIcon != null
                        ? AppTextStyle.primaryNavBarTextStyle
                        : AppTextStyle.secondaryNavBarTextStyle,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  Assets.statistics,
                  color: statisticsActiveIcon != null
                      ? AppColors.primaryColor
                      : AppColors.secondaryColor,
                ),
                const SizedBox(
                  height: 10,
                ),
                Visibility(
                  visible: !simpledNavBar,
                  child: const Text(
                    'الإحصائيات',
                    style: AppTextStyle.secondaryNavBarTextStyle,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  Assets.notifications,
                  color: notificationActiveIcon != null
                      ? AppColors.primaryColor
                      : AppColors.secondaryColor,
                ),
                const SizedBox(
                  height: 10,
                ),
                Visibility(
                  visible: !simpledNavBar,
                  child: const Text(
                    'الإشعارات',
                    style: AppTextStyle.secondaryNavBarTextStyle,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  Assets.settings,
                  color: settingsActiveIcon != null
                      ? AppColors.primaryColor
                      : AppColors.secondaryColor,
                ),
                const SizedBox(
                  height: 10,
                ),
                Visibility(
                  visible: !simpledNavBar,
                  child: const Text(
                    'الإعدادات',
                    style: AppTextStyle.secondaryNavBarTextStyle,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
