import 'package:slivgold_tracker/features/gold_feature/data/models/gold_model.dart';

abstract class GoldStates {}

class GoldInitialStates extends GoldStates {}

class GoldLoadingStates extends GoldStates {}

class GoldErrorStates extends GoldStates {
  final String errMsg;
  GoldErrorStates({required this.errMsg});
}

class GoldSuccessStates extends GoldStates {
  final GoldModel goldModel;
  GoldSuccessStates({required this.goldModel});
}
