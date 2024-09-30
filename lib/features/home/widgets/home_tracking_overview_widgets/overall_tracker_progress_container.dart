import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sweat_smart/features/home/widgets/home_tracking_overview_widgets/circular_progress_indicator_overall_tracker.dart';
import 'package:sweat_smart/features/home/widgets/home_tracking_overview_widgets/motivation_tracker_progress_text.dart';

import '../../../../core/dimensions/app_dimensions.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class OverallTrackerProgressContainer extends StatelessWidget {
  const OverallTrackerProgressContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppDimensions.paddingSymmetricH15V10,
      width: double.infinity,
      height: 120.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: AppColors.lightGreen,
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Row(
            children: [
              const CircularProgressIndicatorOverallTracker(),
              AppDimensions.horizontalSpacing12,
              const MotivationTrackerProgressText()
            ],
          ),
          Positioned(
            left: 15.w,
            child: Text(
              '75%',
              style: AppStyles.font25BlackBold,
            ),
          )
        ],
      ),
    );
  }
}
