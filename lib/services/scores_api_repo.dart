import 'package:multi_sport_score/models/scores.dart';
import 'package:multi_sport_score/models/sport_type.dart';
import 'package:multi_sport_score/services/api_constant.dart';
import 'package:multi_sport_score/services/api_utils.dart';

import '../utils/exception.dart';

class ScoresApiRepo {
  final ApiUtils apiUtils = ApiUtils();

  Future<List<SportType>> getSportTypes() async {
    try {
      final response = await apiUtils.get(
          url: "${ApiConstant.baseUrl}Data/Init/AllScores",
          queryParameters: {"lang": 1});

      final matches = response.data['AllScoresCategories'] as List;
      return matches.map((item) => SportType.fromJson(item)).toList();
    } catch (e) {
      throw CustomException(e.toString());
    }
  }

  Future<Scores> getScores(String startDate, int sportId) async {
    try {
      final response = await apiUtils
          .get(url: "${ApiConstant.baseUrl}Data/Games/", queryParameters: {
        "startdate": startDate,
        "sports": sportId,
        "lang": 1,
      });
      final res = response.data;
      return Scores.fromJson(res);
    } catch (e) {
      throw CustomException(e.toString());
    }
  }
}
