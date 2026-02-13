import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slivgold_tracker/core/constants/app_assets.dart';
import 'package:slivgold_tracker/core/constants/app_strings.dart';
import 'package:slivgold_tracker/core/helpers/spacing.dart';
import 'package:slivgold_tracker/core/theming/app_colors.dart';
import 'package:slivgold_tracker/core/theming/styles.dart';
import 'package:slivgold_tracker/features/silver_feature/data/repo/gold_repo.dart';
import 'package:slivgold_tracker/features/silver_feature/persentation/cubit/silver_cubit.dart';
import 'package:slivgold_tracker/features/silver_feature/persentation/cubit/silver_states.dart';

class SilverScreen extends StatelessWidget {
  const SilverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SilverCubit(SilverRepo())..getSilver(),
      child: Scaffold(
        backgroundColor: AppColors.blackColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            AppStrings.silverTracker,
            style: AppStyles.getBoldStyle(
              color: AppColors.silverColor,
            ),
          ),
        ),
        body: BlocBuilder<SilverCubit, SilverStates>(
          builder: (context, state) {
            if (state is SilverLoadingStates) {
              return const Center(
                child: CircularProgressIndicator(
                  color: AppColors.silverColor,
                ),
              );
            } else if (state is SilverErrorStates) {
              return Text(state.errMsg);
            } else if (state is SilverSuccessStates) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Image.asset(
                      AppAssets.silverImage,
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
                      Text(state.silverModel.price.toString(),
                          style: AppStyles.getSemiBoldStyle(
                              color: AppColors.silverColor)),
                      horizontalSpace(8),
                      Text(AppStrings.egp,
                          style: AppStyles.getMediumStyle(
                              fontSize: 18, color: AppColors.silverColor)),
                    ],
                  ),
                  Text(AppStrings.liveMarketPrice,
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
