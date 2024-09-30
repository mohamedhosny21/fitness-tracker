import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sweat_smart/core/theming/colors.dart';

import '../../../core/dimensions/app_dimensions.dart';
import '../../../core/theming/styles.dart';

class WorkoutTypesListViewBuilder extends StatelessWidget {
  const WorkoutTypesListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          margin: AppDimensions.marginRight10,
          padding: AppDimensions.paddingSymmetricHorizontal10,
          decoration: BoxDecoration(
              color: AppColors.darkGrey,
              borderRadius: BorderRadius.circular(20.r)),
          child: Center(
            child: Row(
              children: [
                const Icon(
                  Icons.sports_gymnastics_outlined,
                  color: Colors.white,
                ),
                AppDimensions.horizontalSpacing8,
                Text(
                  'Gym',
                  style: AppStyles.font14WhiteMedium,
                )
              ],
            ),
          ),
        ),
        itemCount: 10,
      ),
    );
  }
}
