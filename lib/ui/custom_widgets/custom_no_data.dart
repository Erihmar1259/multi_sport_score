
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_sport_score/constants/images_const.dart';

class CustomNoDataWidget extends StatelessWidget {
  const CustomNoDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(noDataImage,height: 200.h,width: 200.w,),
    );
  }
}
