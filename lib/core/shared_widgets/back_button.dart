import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      child: BackButton(
        color: AppColors.white,
        style: ButtonStyle(
          iconSize: WidgetStatePropertyAll(
            30.w,
          ),
        ),
      ),
    );
  }
}
