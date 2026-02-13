
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slivgold_tracker/features/silver_feature/data/repo/gold_repo.dart';
import 'package:slivgold_tracker/features/silver_feature/persentation/cubit/silver_states.dart';

class SilverCubit extends Cubit<SilverStates> {
  final SilverRepo silverRepo;

  SilverCubit(this.silverRepo) : super(SilverInitialStates());
  Future<void> getSilver() async {
    emit(SilverLoadingStates());
    final response = await silverRepo.getSilver();
    response.fold((error) {
      emit(SilverErrorStates(errMsg: error));
    }, (silverModel) {
      emit(SilverSuccessStates(silverModel: silverModel));
    });
  }
}
