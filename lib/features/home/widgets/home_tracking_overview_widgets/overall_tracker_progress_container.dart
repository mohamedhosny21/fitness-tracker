import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sweat_smart/features/home/widgets/home_tracking_overview_widgets/circular_progress_indicator_overall_tracker.dart';
import 'package:sweat_smart/features/home/widgets/home_tracking_overview_widgets/overall_tracker_progress_text.dart';
import 'package:sweat_smart/features/home/widgets/home_tracking_overview_widgets/progress_percentage.dart';

import '../../../../core/dimensions/app_dimensions.dart';
import '../../../../core/theming/colors.dart';

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
      child: Row(
        children: [
          const Stack(
            children: [
              CircularProgressIndicatorOverallTracker(),
              ProgressPercentage()
            ],
          ),
          AppDimensions.horizontalSpacing12,
          const OverallTrackerProgressText()
        ],
      ),
    );
  }
}
