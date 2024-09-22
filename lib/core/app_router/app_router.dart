import 'package:flutter/material.dart';
import 'package:sweat_smart/core/app_router/routes.dart';
import 'package:sweat_smart/features/home/home.dart';
import 'package:sweat_smart/features/onboarding/welcome_onboarding_screen.dart';
import 'package:sweat_smart/features/onboarding/tracking_onboarding_screen.dart';
import 'package:sweat_smart/features/onboarding/workout_onboarding_screen.dart';

import '../../features/onboarding/user_config_onboarding_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.welcomeOnboardingScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const GetStartedScreen());
      case AppRoutes.trackingOnboardingScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) =>
                const TrackingOnboardingScreen());

      case AppRoutes.workoutOnboardingScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const WorkoutOnboardingScreen());

      case AppRoutes.userConfigurationOnboardingScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => UserConfigOnboardingScreen());

      case AppRoutes.homeScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen());

      default:
        null;
    }
    return null;
  }
}
