import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_sport_score/constants/color_const.dart';

import '../../../utils/global.dart';
import '../../custom_widgets/custom_text.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor:  primaryColor,
        centerTitle: true,
        iconTheme: IconThemeData(color: whiteColor),
        title: CustomText(text:"Privacy Policy",fontSize: 18.sp,fontWeight: FontWeight.bold,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(8.w
          ),
          child: Text(
            Global.policyEn,
            style: TextStyle(fontSize: 16.sp,color: whiteColor),

          ),
        ),
      )    );
  }
}
