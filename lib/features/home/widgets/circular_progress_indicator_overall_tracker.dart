import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircularProgressIndicatorOverallTracker extends StatelessWidget {
  const CircularProgressIndicatorOverallTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.w,
      height: 80.h,
      child: CircularProgressIndicator(
        strokeWidth: 10,
        value: 0.75,
        backgroundColor: Colors.grey,
        valueColor: Animation.fromValueListenable(Animation.fromValueListenable(
          const AlwaysStoppedAnimation(Colors.black),
        )),
      ),
    );
  }
}
