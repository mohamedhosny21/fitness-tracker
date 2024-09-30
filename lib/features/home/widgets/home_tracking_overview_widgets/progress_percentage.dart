import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/styles.dart';

class ProgressPercentage extends StatelessWidget {
  const ProgressPercentage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.w,
      height: 80.h,
      child: Center(
        child: Text(
          '75%',
          style: AppStyles.font25BlackBold,
        ),
      ),
    );
  }
}
