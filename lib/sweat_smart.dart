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
        debugShowCheckedModeBanner: false,
        title: 'Sweat Smart',
        initialRoute: AppRoutes.getStartedScreen,
        onGenerateRoute: appRouter.onGenerateRoute,
        theme: ThemeData(
          fontFamily: 'Poppins',
          scaffoldBackgroundColor: Colors.black,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
      ),
    );
  }
}
