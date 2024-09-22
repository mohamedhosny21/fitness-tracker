import 'package:flutter/material.dart';
import 'package:sweat_smart/core/dimensions/app_dimensions.dart';

import '../../core/app_router/routes.dart';
import '../../core/constants/app_constants.dart';
import '../../core/shared_widgets/back_button.dart';
import 'widgets/onboarding_description.dart';
import 'widgets/onboarding_image.dart';
import 'widgets/onboarding_page_indicator.dart';
import 'widgets/onboarding_title.dart';
import 'widgets/onboarding_custom_button.dart';

class WorkoutOnboardingScreen extends StatelessWidget {
  const WorkoutOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            const OnboardingImage(
              image: AppConstants.workoutGetStartedImage,
            ),
            const CustomBackButton(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const OnboardingTitle(
                  title: 'Personalized Workouts',
                ),
                AppDimensions.verticalSpacing15,
                const OnboardingDescription(
                  description:
                      'Discover tailored workouts designed to fit your goals, whether you\'re building strength or boosting endurance. Train smarter, not harder!',
                ),
                AppDimensions.verticalSpacing28,
                const OnboardingPageIndicator(
                  pageIndex: 3,
                ),
                AppDimensions.verticalSpacing24,
                const OnboardingCustomButton(
                  routeName: AppRoutes.userConfigurationOnboardingScreen,
                  text: 'Next',
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
