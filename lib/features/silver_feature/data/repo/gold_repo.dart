import 'package:dartz/dartz.dart';

import 'package:slivgold_tracker/core/networking/api_constants.dart';
import 'package:slivgold_tracker/core/networking/dio_helper.dart';
import 'package:slivgold_tracker/features/silver_feature/data/models/silver_model.dart';

class SilverRepo {
  Future<Either<String, SilverModel>> getSilver() async {
    try {
      final response =
          await DioHelper.getData(endPoint: ApiConstants.silverEndPoint);

      return right(SilverModel.fromJson(response.data));
    } catch (e) {
      return left(e.toString());
    }
  }
}
