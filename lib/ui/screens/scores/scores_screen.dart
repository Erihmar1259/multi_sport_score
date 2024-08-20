import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:multi_sport_score/controller/scores_controller.dart';
import 'package:multi_sport_score/ui/custom_widgets/custom_text.dart';

import '../../../constants/color_const.dart';

class ScoresScreen extends StatelessWidget {
  const ScoresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scoresController = Get.put(ScoresController());
    return Scaffold(
        backgroundColor: primaryColor,
        body: Obx(
          () => scoresController.isLoading.value == true
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Column(
                  children: [
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: scoresController.stList.length,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 50.w,
                            width: 50.w,
                            child: CustomText(
                              text: scoresController.stList[index].name ?? '',
                            ),
                          );
                        })
                  ],
                ),
        ));
  }
}
