
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slivgold_tracker/features/gold_feature/data/repo/gold_repo.dart';
import 'package:slivgold_tracker/features/gold_feature/persentation/cubit/gold_states.dart';

class GoldCubit extends Cubit<GoldStates> {
  final GoldRepo goldRepo;

  GoldCubit(this.goldRepo) : super(GoldInitialStates());
  Future<void> getGold() async {
    emit(GoldLoadingStates());
    final response = await goldRepo.getGold();
    response.fold((error) {
      emit(GoldErrorStates(errMsg: error));
    }, (goldModel) {
      emit(GoldSuccessStates(goldModel: goldModel));
    });
  }
}
