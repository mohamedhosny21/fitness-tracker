import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sweat_smart/core/dimensions/app_dimensions.dart';

import '../../../core/theming/colors.dart';

class OnboardingPageIndicator extends StatelessWidget {
  final int pageIndex;
  const OnboardingPageIndicator({super.key, required this.pageIndex});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 40.w,
        height: 7.7.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: pageIndex == 1 ? Colors.white : AppColors.grey,
                  shape: BoxShape.circle),
              width: 7.7.w,
              height: 7.7.h,
            ),
            AppDimensions.horizontalSpacing8,
            Container(
              decoration: BoxDecoration(
                  color: pageIndex == 2 ? Colors.white : AppColors.grey,
                  shape: BoxShape.circle),
              width: 7.7.w,
              height: 7.7.h,
            ),
            AppDimensions.horizontalSpacing8,
            Container(
              decoration: BoxDecoration(
                  color: pageIndex == 3 ? Colors.white : AppColors.grey,
                  shape: BoxShape.circle),
              width: 7.7.w,
              height: 7.7.h,
            ),
          ],
        ));
  }
}
