import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/theming/colors.dart';
import '../../../core/theming/styles.dart';

class OnboardingCustomButton extends StatelessWidget {
  final String text;
  final String routeName;
  const OnboardingCustomButton(
      {super.key, required this.text, required this.routeName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.0.h),
      child: MaterialButton(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
        onPressed: () {
          Navigator.pushNamed(context, routeName);
        },
        color: AppColors.white,
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
