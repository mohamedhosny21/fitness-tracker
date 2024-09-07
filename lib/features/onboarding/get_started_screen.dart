import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sweat_smart/core/app_router/routes.dart';
import 'package:sweat_smart/core/constants/app_constants.dart';
import 'package:sweat_smart/features/onboarding/widgets/get_started_description.dart';
import 'package:sweat_smart/features/onboarding/widgets/get_started_image.dart';
import 'package:sweat_smart/features/onboarding/widgets/get_started_page_indicator.dart';
import 'package:sweat_smart/features/onboarding/widgets/get_started_title.dart';
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
            const GetStartedImage(
              image: AppConstants.welcomeGetStartedImage,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const GetStartedTitle(
                  title: 'Welcome to Sweat Smart',
                ),
                SizedBox(
                  height: 15.h,
                ),
                const GetStartedDescription(
                  description:
                      'Kickstart your fitness journey with personalized workouts and progress tracking. Let\'s help you reach your goals, one step at a time!',
                ),
                SizedBox(
                  height: 28.h,
                ),
                const GetStartedPageIndicator(
                  pageIndex: 1,
                ),
                SizedBox(
                  height: 24.h,
                ),
                const OnboardingCustomButton(
                  routeName: AppRoutes.trackingOnboardingScreen,
                  text: 'Get Started',
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
