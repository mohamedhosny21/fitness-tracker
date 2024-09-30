import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/colors.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: AppColors.grey),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.notifications_none_outlined,
        ),
        iconSize: 25.w,
        color: Colors.white,
      ),
    );
  }
}
