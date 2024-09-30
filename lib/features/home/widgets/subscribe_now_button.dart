import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/colors.dart';
import '../../../core/theming/styles.dart';

class SubscribeNowButton extends StatelessWidget {
  const SubscribeNowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: MaterialButton(
          onPressed: () {},
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
          color: AppColors.lightGreen,
          child: Text(
            'Subscribe Now',
            style: AppStyles.font14BlackMedium
                .copyWith(fontSize: 18.sp, fontWeight: FontWeight.w600),
          )),
    );
  }
}
