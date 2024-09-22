import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

abstract class AppStyles {
  static TextStyle font25WhiteSemiBold = TextStyle(
      color: AppColors.white, fontSize: 25.sp, fontWeight: FontWeight.w600);
  static TextStyle font22WhiteSemiBold = TextStyle(
      color: AppColors.white, fontSize: 22.sp, fontWeight: FontWeight.bold);

  static TextStyle font18WhiteRegular = TextStyle(
      color: AppColors.white, fontSize: 18.sp, fontWeight: FontWeight.w400);

  static TextStyle font14OffWhiteRegular = TextStyle(
      color: AppColors.offWhite, fontSize: 14.sp, fontWeight: FontWeight.w400);

  static TextStyle font20BlackMedium = TextStyle(
      color: AppColors.black, fontSize: 20.sp, fontWeight: FontWeight.w500);

  static TextStyle font25BlackBold = TextStyle(
      color: AppColors.black, fontSize: 25.sp, fontWeight: FontWeight.bold);

  static TextStyle font14BlackMedium = TextStyle(
      color: AppColors.black, fontSize: 14.sp, fontWeight: FontWeight.w400);
  static TextStyle font14WhiteMedium = TextStyle(
      color: AppColors.white, fontSize: 14.sp, fontWeight: FontWeight.w400);

  static TextStyle font20WhiteMedium = TextStyle(
      fontSize: 20.sp, color: AppColors.white, fontWeight: FontWeight.w500);

  static TextStyle font14LightGreenRegular = TextStyle(
      fontSize: 14.sp,
      color: AppColors.lightGreen,
      fontWeight: FontWeight.w400);

  static TextStyle font11greyRegular = TextStyle(
      fontSize: 11.sp, color: AppColors.grey, fontWeight: FontWeight.w400);
  static TextStyle font14BlueRegular = TextStyle(
      fontSize: 14.sp, color: AppColors.mainBlue, fontWeight: FontWeight.w400);
}
