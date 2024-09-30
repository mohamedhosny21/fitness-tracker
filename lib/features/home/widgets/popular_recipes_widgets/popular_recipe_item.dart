import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/dimensions/app_dimensions.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class PopularRecipeItem extends StatelessWidget {
  const PopularRecipeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Container(
        width: double.infinity,
        padding: AppDimensions.paddingSymmetricH15V10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: AppColors.darkGrey,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Image.asset(
                fit: BoxFit.contain,
                AppConstants.recipeImage,
              ),
            ),
            AppDimensions.horizontalSpacing8,
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Salad',
                    style: AppStyles.font14WhiteMedium
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  AppDimensions.verticalSpacing5,
                  Text(
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      'A vibrant and refreshing salad packed with protein, healthy fats, and fiber. Perfect as a light meal or a side dish.',
                      style: AppStyles.font12WhiteRegular),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
