import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_sport_score/models/sport_type.dart';

import '../services/scores_api_repo.dart';
import '../utils/constants.dart';

class ScoresController extends GetxController {
  final isLoading = false.obs;
  RxList<SportType> stList = <SportType>[].obs;
  Rx<SportType> selectedSport = SportType().obs;

  @override
  void onInit() {
    getSportType();
    super.onInit();
  }

  Future<void> getSportType() async {
    isLoading.value = true;
    try {
      final result = await ScoresApiRepo().getSportTypes();
      stList.value = result;
    } catch (e) {
      constants.showSnackBar(
          title: 'Error', msg: e.toString(), textColor: Colors.red);
    } finally {
      isLoading.value = false;
    }
  }
}
