import 'package:flutter/material.dart';
import 'package:slivgold_tracker/core/constants/app_strings.dart';
import 'package:slivgold_tracker/core/theming/app_colors.dart';
import 'package:slivgold_tracker/core/theming/styles.dart';
import 'package:slivgold_tracker/features/silver_feature/persentation/screens/widgets/silver_body.dart';

class SilverView extends StatelessWidget {
  const SilverView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: const SilverBody(),
    );
  }
}
