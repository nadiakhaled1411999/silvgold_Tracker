import 'package:dartz/dartz.dart';

import 'package:slivgold_tracker/core/networking/api_constants.dart';
import 'package:slivgold_tracker/core/networking/dio_helper.dart';
import 'package:slivgold_tracker/features/gold_feature/data/models/gold_model.dart';

class GoldRepo {
  Future<Either<String, GoldModel>> getGold() async {
    try {
      final response =
          await DioHelper.getData(endPoint: ApiConstants.goldEndPoint);

      return right(GoldModel.fromJson(response.data));
    } catch (e) {
      return left(e.toString());
    }
  }
}
