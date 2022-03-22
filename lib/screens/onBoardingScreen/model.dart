import 'package:tanitapp/style/assets.dart';

class OnbordingContent {
  String image;
  String title;
  String description;
  String utilisation;

  OnbordingContent({required this.image, required this.title, required this.description, required this.utilisation});
}

List<OnbordingContent> contents = [
  OnbordingContent(
    title: 'حبوب البروجيستيرون',
    image: Assets.on_boarding_screen_1,
    description: "تحتوي حبوب البروجيستيرون على هرمون البروجيستيرون فقط",
    utilisation: "تؤخذ مرة في اليوم في نفس الوقت دون إنقطاع",
  ),
  OnbordingContent(
    title: 'الواقي الذكري',
    image: Assets.on_boarding_screen_2,
    description: "غلاف رفيع يوضع فوق القضيب المنتصب ",
    utilisation: "إستخدام الواقي الذكري يحمي أيضا من الإصابة بالتعفنات المنقولة جنسيا",
  ),
  OnbordingContent(
    title: 'الآلة الرحمية',
    image: Assets.on_boarding_screen_3,
    description: " :يوضع داخل الرحم و يوجد نوعان",
    utilisation: "  الآلة الرحمية الهرمونية\nالآلة الرحمية  النحاسية "
  ),
];