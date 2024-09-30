import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sweat_smart/features/home/widgets/subscribe_now_button.dart';

import '../../../core/constants/app_constants.dart';
import '../../../core/dimensions/app_dimensions.dart';
import '../../../core/theming/colors.dart';
import '../../../core/theming/styles.dart';

class PremiumPersonalCoachContainer extends StatelessWidget {
  const PremiumPersonalCoachContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: Banner(
        message: 'Premium',
        location: BannerLocation.topEnd,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: AppColors.darkGrey,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(fit: BoxFit.cover, AppConstants.premiumPersonalCoach),
              AppDimensions.verticalSpacing10,
              Padding(
                padding: AppDimensions.paddingSymmetricH15V5,
                child: Text(
                  'Get personalized training and nutrition plans tailored just for you. Elevate your fitness journey with our Premium AI Coach and reach your goals faster.',
                  style: AppStyles.font12WhiteMedium,
                ),
              ),
              const SubscribeNowButton()
            ],
          ),
        ),
      ),
    );
  }
}
