
import 'package:slivgold_tracker/features/silver_feature/data/models/silver_model.dart';

abstract class SilverStates {}

class SilverInitialStates extends SilverStates {}

class SilverLoadingStates extends SilverStates {}

class SilverErrorStates extends SilverStates {
  final String errMsg;
  SilverErrorStates({required this.errMsg});
}

class SilverSuccessStates extends SilverStates {
  final SilverModel silverModel;
  SilverSuccessStates({required this.silverModel});
}
