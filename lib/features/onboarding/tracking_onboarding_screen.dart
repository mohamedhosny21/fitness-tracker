import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sweat_smart/core/app_router/routes.dart';
import 'package:sweat_smart/core/constants/app_constants.dart';
import 'package:sweat_smart/core/shared_widgets/back_button.dart';
import 'widgets/get_started_description.dart';
import 'widgets/get_started_image.dart';
import 'widgets/get_started_page_indicator.dart';
import 'widgets/get_started_title.dart';
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
            const GetStartedImage(
              image: AppConstants.trackGetStartedImage,
            ),
            const CustomBackButton(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const GetStartedTitle(
                  title: 'Track Your Progress',
                ),
                SizedBox(
                  height: 15.h,
                ),
                const GetStartedDescription(
                  description:
                      'Stay on top of your fitness journey with real-time tracking and insights. Monitor your progress and achieve your goals faster!',
                ),
                SizedBox(
                  height: 28.h,
                ),
                const GetStartedPageIndicator(
                  pageIndex: 2,
                ),
                SizedBox(
                  height: 24.h,
                ),
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
