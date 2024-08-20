import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_sport_score/constants/color_const.dart';
import 'package:multi_sport_score/constants/dimen_const.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:multi_sport_score/ui/custom_widgets/custom_loading.dart';
import 'package:multi_sport_score/ui/custom_widgets/custom_text.dart';

import '../../../constants/images_const.dart';
import '../../../controller/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final splashScreenController = Get.put(SplashScreenController());
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color:primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(logoImg,width: 200.w,height: 200.h,),
            kSizedBoxH30,

            kSizedBoxH30,
              Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 CustomText(text: 'Please wait', color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.bold),
                 kSizedBoxW5,
                 CustomCircleLoading()
               ],
             ),
          ],
        ),
      ),
    );
  }
}
