import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slivgold_tracker/core/constants/app_assets.dart';
import 'package:slivgold_tracker/core/constants/app_strings.dart';
import 'package:slivgold_tracker/core/helpers/spacing.dart';
import 'package:slivgold_tracker/core/theming/app_colors.dart';
import 'package:slivgold_tracker/core/theming/styles.dart';
import 'package:slivgold_tracker/features/gold_feature/data/repo/gold_repo.dart';
import 'package:slivgold_tracker/features/gold_feature/persentation/cubit/gold_cubit.dart';
import 'package:slivgold_tracker/features/gold_feature/persentation/cubit/gold_states.dart';

class GoldScreen extends StatelessWidget {
  const GoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GoldCubit(GoldRepo())..getGold(),
      child: Scaffold(
        backgroundColor: AppColors.blackColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "Gold Tracker",
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w800,
                color: AppColors.goldColor,
                letterSpacing: 1.2),
          ),
        ),
        body: BlocBuilder<GoldCubit, GoldStates>(
          builder: (context, state) {
            if (state is GoldLoadingStates) {
              return const Center(
                child: CircularProgressIndicator(
                  color: AppColors.goldColor,
                ),
              );
            } else if (state is GoldErrorStates) {
              return Text(state.errMsg);
            } else if (state is GoldSuccessStates) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Image.asset(
                      AppAssets.goldImage,
                      width: 0.6.sw,
                      fit: BoxFit.contain,
                    ),
                  ),
                  verticalSpace(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(state.goldModel.price.toString(),
                          style: AppStyles.getSemiBoldStyle()),
                      horizontalSpace(8),
                      Text("Egp",
                          style: AppStyles.getMediumStyle(
                              fontSize: 18, color: AppColors.goldColor)),
                    ],
                  ),
                  Text("Live Market Price",
                      style: AppStyles.getMediumStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 12,
                      )),
                ],
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
