import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

abstract class AppStyles {
  static TextStyle font25WhiteSemiBold = TextStyle(
      color: AppColors.white, fontSize: 25.sp, fontWeight: FontWeight.w600);

  static TextStyle font14OffWhiteRegular = TextStyle(
      color: AppColors.offWhite, fontSize: 14.sp, fontWeight: FontWeight.w400);

  static TextStyle font20BlackMedium = TextStyle(
      color: AppColors.black, fontSize: 20.sp, fontWeight: FontWeight.w500);
}
