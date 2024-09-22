import 'package:flutter/material.dart';
import 'package:sweat_smart/core/app_router/routes.dart';
import 'package:sweat_smart/core/constants/app_constants.dart';
import 'package:sweat_smart/core/dimensions/app_dimensions.dart';
import 'package:sweat_smart/core/shared_widgets/back_button.dart';
import 'widgets/onboarding_description.dart';
import 'widgets/onboarding_image.dart';
import 'widgets/onboarding_page_indicator.dart';
import 'widgets/onboarding_title.dart';
import 'widgets/onboarding_custom_button.dart';

class TrackingOnboardingScreen extends StatelessWidget {
  const TrackingOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            const OnboardingImage(
              image: AppConstants.trackGetStartedImage,
            ),
            const CustomBackButton(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const OnboardingTitle(
                  title: 'Track Your Progress',
                ),
                AppDimensions.verticalSpacing15,
                const OnboardingDescription(
                  description:
                      'Stay on top of your fitness journey with real-time tracking and insights. Monitor your progress and achieve your goals faster!',
                ),
                AppDimensions.verticalSpacing28,
                const OnboardingPageIndicator(
                  pageIndex: 2,
                ),
                AppDimensions.verticalSpacing24,
                const OnboardingCustomButton(
                  routeName: AppRoutes.workoutOnboardingScreen,
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
