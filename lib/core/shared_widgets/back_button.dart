import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      child: BackButton(
        color: Colors.white,
        style: ButtonStyle(
          iconSize: WidgetStatePropertyAll(
            30.w,
          ),
        ),
      ),
    );
  }
}
