import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/colors.dart';

class GetStartedPageIndicator extends StatelessWidget {
  final int pageIndex;
  const GetStartedPageIndicator({super.key, required this.pageIndex});

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
                  color: pageIndex == 1 ? AppColors.white : AppColors.grey,
                  shape: BoxShape.circle),
              width: 7.7.w,
              height: 7.7.h,
            ),
            SizedBox(
              width: 8.w,
            ),
            Container(
              decoration: BoxDecoration(
                  color: pageIndex == 2 ? AppColors.white : AppColors.grey,
                  shape: BoxShape.circle),
              width: 7.7.w,
              height: 7.7.h,
            ),
            SizedBox(
              width: 8.w,
            ),
            Container(
              decoration: BoxDecoration(
                  color: pageIndex == 3 ? AppColors.white : AppColors.grey,
                  shape: BoxShape.circle),
              width: 7.7.w,
              height: 7.7.h,
            ),
          ],
        ));
  }
}
