import 'package:flutter/material.dart';
import 'package:slivgold_tracker/core/constants/app_strings.dart';
import 'package:slivgold_tracker/core/theming/app_colors.dart';
import 'package:slivgold_tracker/core/theming/styles.dart';
import 'package:slivgold_tracker/features/gold_feature/persentation/screens/widgets/gold_body.dart';

class GoldView extends StatelessWidget {
  const GoldView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          AppStrings.goldTracker,
          style: AppStyles.getBoldStyle(),
        ),
      ),
      body: const GoldBody(),
    );
  }
}
