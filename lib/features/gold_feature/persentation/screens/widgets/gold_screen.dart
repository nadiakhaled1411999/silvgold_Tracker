 import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slivgold_tracker/features/gold_feature/data/repo/gold_repo.dart';
import 'package:slivgold_tracker/features/gold_feature/persentation/cubit/gold_cubit.dart';
import 'package:slivgold_tracker/features/gold_feature/persentation/screens/widgets/gold_view.dart';

class GoldScreen extends StatelessWidget {
  const GoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GoldCubit(GoldRepo())..getGold(),
      child: const GoldView(),
    );
  }
}
