import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slivgold_tracker/core/constants/app_strings.dart';
import 'package:slivgold_tracker/core/helpers/spacing.dart';
import 'package:slivgold_tracker/core/routing/routes.dart';
import 'package:slivgold_tracker/core/theming/app_colors.dart';
import 'package:slivgold_tracker/core/theming/styles.dart';
import 'package:slivgold_tracker/core/widgets/app_text_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppTextButton(
                buttonText: AppStrings.gold,
                backgroundColor: AppColors.goldColor,
                buttonWidth: 0.5.sw,
                textStyle: AppStyles.getMediumStyle(),
                onPressed: () {
                  Navigator.pushNamed(context, Routes.goldScreen);
                }),
            verticalSpace(15),
            AppTextButton(
                buttonText: AppStrings.silver,
                backgroundColor: AppColors.silverColor,
                buttonWidth: 0.5.sw,
                textStyle: AppStyles.getMediumStyle(),
                onPressed: () {
                  Navigator.pushNamed(context, Routes.silverScreen);
                })
          ],
        ),
      ),
    );
  }
}
