import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/app_router/app_router.dart';
import 'sweat_smart.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(SweatSmart(
    appRouter: AppRouter(),
  ));
}
