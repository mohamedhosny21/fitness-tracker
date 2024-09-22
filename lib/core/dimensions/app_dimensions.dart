import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppDimensions {
  // ***********  Sized Box  ***************//
  static SizedBox verticalSpacing20 = SizedBox(
    height: 20.h,
  );
  static SizedBox verticalSpacing50 = SizedBox(
    height: 50.h,
  );
  static SizedBox verticalSpacing24 = SizedBox(
    height: 24.h,
  );

  static SizedBox verticalSpacing28 = SizedBox(
    height: 28.h,
  );
  static SizedBox verticalSpacing15 = SizedBox(
    height: 15.h,
  );
  static SizedBox verticalSpacing10 = SizedBox(
    height: 10.h,
  );
  static SizedBox horizontalSpacing8 = SizedBox(
    width: 8.w,
  );
  static SizedBox horizontalSpacing12 = SizedBox(
    width: 12.w,
  );
  static SizedBox verticalSpacing70 = SizedBox(
    height: 70.h,
  );

  // ***********  Padding  ***************//

  static EdgeInsetsGeometry paddingSymmetricHorizontal20 =
      EdgeInsets.symmetric(horizontal: 20.w);

  static EdgeInsetsGeometry paddingSymmetricHorizontal10 =
      EdgeInsets.symmetric(horizontal: 10.w);

  static EdgeInsetsGeometry paddingSymmetricH15V10 =
      EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h);

  static EdgeInsetsGeometry paddingBottom20 = EdgeInsets.only(bottom: 20.0.h);

  static EdgeInsetsGeometry paddingL10T80R10B0 =
      EdgeInsets.fromLTRB(10.w, 80.h, 10.w, 0.h);

  static EdgeInsetsGeometry paddingL10T30R10B10 =
      EdgeInsets.fromLTRB(10.w, 30.h, 10.w, 10.h);
  static EdgeInsetsGeometry marginRight10 = EdgeInsets.only(right: 10.w);
}
