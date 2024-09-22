import 'package:flutter/material.dart';
import 'package:sweat_smart/core/app_router/routes.dart';
import 'package:sweat_smart/core/constants/app_constants.dart';
import 'package:sweat_smart/core/dimensions/app_dimensions.dart';
import 'package:sweat_smart/features/onboarding/widgets/onboarding_description.dart';
import 'package:sweat_smart/features/onboarding/widgets/onboarding_image.dart';
import 'package:sweat_smart/features/onboarding/widgets/onboarding_page_indicator.dart';
import 'package:sweat_smart/features/onboarding/widgets/onboarding_title.dart';
import 'package:sweat_smart/features/onboarding/widgets/onboarding_custom_button.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            const OnboardingImage(
              image: AppConstants.welcomeGetStartedImage,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const OnboardingTitle(
                  title: 'Welcome to Sweat Smart',
                ),
                AppDimensions.verticalSpacing15,
                const OnboardingDescription(
                  description:
                      'Kickstart your fitness journey with personalized workouts and progress tracking. Let\'s help you reach your goals, one step at a time!',
                ),
                AppDimensions.verticalSpacing28,
                const OnboardingPageIndicator(
                  pageIndex: 1,
                ),
                AppDimensions.verticalSpacing24,
                const OnboardingCustomButton(
                  routeName: AppRoutes.trackingOnboardingScreen,
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
