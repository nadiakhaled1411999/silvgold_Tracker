import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slivgold_tracker/core/constants/app_assets.dart';
import 'package:slivgold_tracker/core/constants/app_strings.dart';
import 'package:slivgold_tracker/core/helpers/spacing.dart';
import 'package:slivgold_tracker/core/theming/app_colors.dart';
import 'package:slivgold_tracker/core/theming/styles.dart';

class GoldPriceSection extends StatelessWidget {
  final String price;

  const GoldPriceSection({
    super.key,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
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
            Text(
              price,
              style: AppStyles.getSemiBoldStyle(),
            ),
            horizontalSpace(8),
            Text(
              AppStrings.egp,
              style: AppStyles.getMediumStyle(
                fontSize: 18,
                color: AppColors.goldColor,
              ),
            ),
          ],
        ),
        Text(
          AppStrings.liveMarketPrice,
          style: AppStyles.getMediumStyle(
            color: Colors.white.withOpacity(0.5),
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
