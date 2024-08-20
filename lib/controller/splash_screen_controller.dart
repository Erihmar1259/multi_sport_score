import 'package:multi_sport_score/ui/screens/bottom_navigation/bottom_navigation_menu.dart';
import 'package:get/get.dart';
import 'package:multi_sport_score/ui/screens/intro/intro_screen.dart';

class SplashScreenController extends GetxController{
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAll(() => const IntroScreen());
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}