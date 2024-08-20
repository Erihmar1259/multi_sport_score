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

  // Future<UserModel> getGuestUser() async {
  //   try {
  //     final response =
  //         await apiUtils.get(url: "${ApiConstant.baseUrl}getGuest");
  //     final cookies = response.headers['set-cookie'];
  //     if ((cookies ?? []).isNotEmpty) {
  //       final box = GetStorage();
  //       box.write('cookies', cookies?[0].toString());
  //       apiUtils.setCookies(cookies?[0] ?? '');
  //     }
  //     print("cookies>>>${cookies?[0].toString()}");
  //     // Global.cookie =
  //     //     response.headers.map["set-cookie"]?.first.split(";").first ?? '';
  //     // if ((Global.cookie).isNotEmpty) {
  //     //   final box = GetStorage();
  //     //   box.write('cookies', Global.cookie);
  //     //   apiUtils.setCookiesJar(Global.cookie);
  //     // }
  //     // print("cookies>>>${Global.cookie}");
  //     final guest = response.data;
  //     return UserModel.fromJson(guest);
  //   } catch (e) {
  //     throw CustomException(e.toString());
  //   }
  // }
}
