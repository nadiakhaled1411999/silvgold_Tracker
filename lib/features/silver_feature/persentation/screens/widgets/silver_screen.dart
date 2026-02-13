import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slivgold_tracker/features/silver_feature/data/repo/gold_repo.dart';
import 'package:slivgold_tracker/features/silver_feature/persentation/cubit/silver_cubit.dart';
import 'package:slivgold_tracker/features/silver_feature/persentation/screens/widgets/silver_view.dart';

class SilverScreen extends StatelessWidget {
  const SilverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SilverCubit(SilverRepo())..getSilver(),
      child: const SilverView(),
    );
  }
}
