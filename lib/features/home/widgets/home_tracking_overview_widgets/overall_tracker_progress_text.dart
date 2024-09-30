import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/dimensions/app_dimensions.dart';
import '../../../../core/theming/styles.dart';

class OverallTrackerProgressText extends StatelessWidget {
  const OverallTrackerProgressText({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Overall Health Grade',
            style: AppStyles.font20BlackMedium.copyWith(fontSize: 18.sp),
          ),
          AppDimensions.verticalSpacing10,
          ConstrainedBox(
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width - 142.w),
            child: Text(
              'Perfect progress, Keep Going',
              style: AppStyles.font14BlackMedium,
            ),
          ),
          // Flexible(
          //   child: Text(
          //     ' Keep Going',
          //     style: AppStyles.font14BlackMedium,
          //   ),
          // )
        ],
      ),
    );
  }
}
