import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/app_router/app_router.dart';
import 'firebase_options.dart';
import 'sweat_smart.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    DevicePreview(
      builder: (BuildContext context) => SweatSmart(
        appRouter: AppRouter(),
      ),
      enabled: !kReleaseMode,
    ),
  );
}
