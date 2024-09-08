
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:multi_sport_score/constants/dimen_const.dart';
import 'package:multi_sport_score/ui/custom_widgets/custom_text.dart';
import 'package:multi_sport_score/ui/screens/settings/privacy_policy_screen.dart';

import '../../../constants/color_const.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        title: CustomText(text: "", color: whiteColor, fontSize: 20.sp, fontWeight: FontWeight.bold),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding:  EdgeInsets.all(8.0),
              child: CustomText(text: "Settings", color: whiteColor, fontSize: 16.sp, fontWeight: FontWeight.bold),
            ),
            ListTile(
              leading: Icon(Icons.language, color: whiteColor),
              title: CustomText(text: "Language", color: whiteColor, fontSize: 16.sp, fontWeight: FontWeight.bold),
              trailing: Icon(Icons.arrow_forward_ios, color: whiteColor),
            ),
            kSizedBoxH10,
            Padding(
              padding:  EdgeInsets.all(8.0),
              child: CustomText(text: "General", color: whiteColor, fontSize: 16.sp, fontWeight: FontWeight.bold),
            ),
            ListTile(
              onTap: (){
                Get.to(() => PrivacyPolicyScreen());
              },
              leading: Icon(Icons.privacy_tip_outlined, color: whiteColor),
              title: CustomText(text: "Privacy Policy", color: whiteColor, fontSize: 16.sp, fontWeight: FontWeight.bold),
              trailing: Icon(Icons.arrow_forward_ios, color: whiteColor),
            ),
            ListTile(
              leading: Icon(Icons.info_outline, color: whiteColor),
              title: CustomText(text: "Version", color: whiteColor, fontSize: 16.sp, fontWeight: FontWeight.bold),
              trailing: CustomText(text: "1.0.0", color: whiteColor, fontSize: 16.sp, fontWeight: FontWeight.bold),
            ),


          ],
        ),
      ),
    );
  }
}
