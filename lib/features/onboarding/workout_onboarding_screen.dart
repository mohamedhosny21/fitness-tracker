import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/app_router/routes.dart';
import '../../core/constants/app_constants.dart';
import 'widgets/get_started_description.dart';
import 'widgets/get_started_image.dart';
import 'widgets/get_started_page_indicator.dart';
import 'widgets/get_started_title.dart';
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
            const GetStartedImage(
              image: AppConstants.workoutGetStartedImage,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const GetStartedTitle(
                  title: 'Personalized Workouts',
                ),
                SizedBox(
                  height: 15.h,
                ),
                const GetStartedDescription(
                  description:
                      'Discover tailored workouts designed to fit your goals, whether you\'re building strength or boosting endurance. Train smarter, not harder!',
                ),
                SizedBox(
                  height: 28.h,
                ),
                const GetStartedPageIndicator(
                  pageIndex: 3,
                ),
                SizedBox(
                  height: 24.h,
                ),
                const OnboardingCustomButton(
                  routeName: AppRoutes.homeScreen,
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
