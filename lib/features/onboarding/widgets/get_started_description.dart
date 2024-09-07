import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/styles.dart';

class GetStartedDescription extends StatelessWidget {
  final String description;
  const GetStartedDescription({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Text(
        textAlign: TextAlign.center,
        description,
        style: AppStyles.font14OffWhiteRegular,
      ),
    );
  }
}
