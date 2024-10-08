import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sweat_smart/core/dimensions/app_dimensions.dart';
import '../../../core/theming/colors.dart';
import '../../../core/theming/styles.dart';

class OnboardingCustomButton extends StatelessWidget {
  final String text;
  final String? routeName;
  final VoidCallback? onPressed;
  const OnboardingCustomButton(
      {super.key, required this.text, this.routeName, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppDimensions.paddingBottom20,
      child: MaterialButton(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
        onPressed: onPressed ?? () => Navigator.pushNamed(context, routeName!),
        color: AppColors.lightGreen,
        minWidth: 324.w,
        height: 53.h,
        child: Text(
          textAlign: TextAlign.center,
          text,
          style: AppStyles.font20BlackMedium,
        ),
      ),
    );
  }
}
