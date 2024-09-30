import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/dimensions/app_dimensions.dart';
import '../../../../core/theming/styles.dart';

class MotivationTrackerProgressText extends StatelessWidget {
  const MotivationTrackerProgressText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Text(
            'Overall Health Grade',
            style: AppStyles.font20BlackMedium,
          ),
        ),
        AppDimensions.verticalSpacing10,
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width - 142.w),
            child: Text(
              'Perfect progress Mohamed,',
              style: AppStyles.font14BlackMedium,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        Flexible(
          child: Text(
            ' Keep Going',
            style: AppStyles.font14BlackMedium,
          ),
        )
      ],
    );
  }
}
