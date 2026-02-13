import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slivgold_tracker/core/theming/app_colors.dart';
import 'package:slivgold_tracker/features/gold_feature/persentation/cubit/gold_cubit.dart';
import 'package:slivgold_tracker/features/gold_feature/persentation/cubit/gold_states.dart';
import 'package:slivgold_tracker/features/gold_feature/persentation/screens/widgets/gold_price_section.dart';

class GoldBody extends StatelessWidget {
  const GoldBody();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GoldCubit, GoldStates>(
      builder: (context, state) {
        if (state is GoldLoadingStates) {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColors.goldColor,
            ),
          );
        }

        if (state is GoldErrorStates) {
          return Center(child: Text(state.errMsg));
        }

        if (state is GoldSuccessStates) {
          return GoldPriceSection(
            price: state.goldModel.price.toString(),
          );
        }

        return const SizedBox();
      },
    );
  }
}
