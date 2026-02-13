import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slivgold_tracker/core/theming/app_colors.dart';
import 'package:slivgold_tracker/features/silver_feature/persentation/cubit/silver_cubit.dart';
import 'package:slivgold_tracker/features/silver_feature/persentation/cubit/silver_states.dart';
import 'package:slivgold_tracker/features/silver_feature/persentation/screens/widgets/silver_price_section.dart';

class SilverBody extends StatelessWidget {
  const SilverBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SilverCubit, SilverStates>(
      builder: (context, state) {
        if (state is SilverLoadingStates) {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColors.silverColor,
            ),
          );
        }

        if (state is SilverErrorStates) {
          return Center(
            child: Text(state.errMsg),
          );
        }

        if (state is SilverSuccessStates) {
          return SilverPriceSection(
            price: state.silverModel.price.toString(),
          );
        }

        return const SizedBox();
      },
    );
  }
}
