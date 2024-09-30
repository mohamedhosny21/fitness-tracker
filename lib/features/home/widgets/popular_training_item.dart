import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sweat_smart/features/home/widgets/popular_training_view_all.dart';
import '../../../core/constants/app_constants.dart';
import '../../../core/dimensions/app_dimensions.dart';
import '../../../core/theming/styles.dart';

class PopularTrainingItem extends StatelessWidget {
  final int itemIndex;
  const PopularTrainingItem({super.key, required this.itemIndex});

  @override
  Widget build(BuildContext context) {
    return itemIndex != 4
        ? Container(
            margin: AppDimensions.marginRight10,
            width: 200.w,
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage(
                      AppConstants.strengthImage,
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(18.r)),
            child: Padding(
              padding: AppDimensions.paddingLeft10Bottom20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Strength',
                    style: AppStyles.font20WhiteMedium
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Training',
                    style: AppStyles.font20WhiteMedium
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  AppDimensions.verticalSpacing10,
                  Text('34 Exercises', style: AppStyles.font14WhiteRegular),
                ],
              ),
            ),
          )
        : const PopularTrainingViewAll();
  }
}
