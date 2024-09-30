import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sweat_smart/core/dimensions/app_dimensions.dart';

import '../../../core/theming/colors.dart';
import '../../../core/theming/styles.dart';

class PopularTrainingViewAll extends StatelessWidget {
  const PopularTrainingViewAll({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Container(
          margin: AppDimensions.marginRight10,
          width: 180.w,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.darkGrey.withOpacity(0.9),
                AppColors.darkGrey.withOpacity(0.7),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(18.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'View All',
                style: AppStyles.font25WhiteSemiBold.copyWith(
                  letterSpacing: 1.5,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.white,
                size: 25.w,
              )
            ],
          ),
        ));
  }
}
