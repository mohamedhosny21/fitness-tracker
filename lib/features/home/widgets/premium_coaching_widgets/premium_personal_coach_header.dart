import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/dimensions/app_dimensions.dart';
import '../../../../core/theming/styles.dart';

class PremiumPersonalCoachHeader extends StatelessWidget {
  const PremiumPersonalCoachHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          AppConstants.premiumGif,
          height: 40.h,
        ),
        AppDimensions.horizontalSpacing8,
        Text('Unlock Your Personal AI Coach!',
            style: AppStyles.font14WhiteMedium),
      ],
    );
  }
}
