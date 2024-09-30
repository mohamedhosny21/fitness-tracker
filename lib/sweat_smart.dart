import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sweat_smart/core/app_router/app_router.dart';
import 'package:sweat_smart/core/app_router/routes.dart';

class SweatSmart extends StatelessWidget {
  final AppRouter appRouter;
  const SweatSmart({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        darkTheme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        title: 'Sweat Smart',
        initialRoute: AppRoutes.welcomeOnboardingScreen,
        onGenerateRoute: appRouter.onGenerateRoute,
        theme: ThemeData(
          fontFamily: 'Poppins',
          scaffoldBackgroundColor: Colors.black,
          useMaterial3: true,
        ),
      ),
    );
  }
}
