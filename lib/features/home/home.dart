import 'package:flutter/material.dart';
import 'package:sweat_smart/core/dimensions/app_dimensions.dart';
import 'package:sweat_smart/features/home/widgets/home_header_widgets/home_header.dart';
import 'package:sweat_smart/features/home/widgets/home_tracking_overview_widgets/overall_tracker_progress_container.dart';
import 'package:sweat_smart/features/home/widgets/popular_recipes_widgets/popular_recipes_header.dart';
import 'package:sweat_smart/features/home/widgets/popular_recipes_widgets/popular_recipes_list_view.dart';
import 'package:sweat_smart/features/home/widgets/popular_training_widgets/popular_training_header.dart';
import 'package:sweat_smart/features/home/widgets/popular_training_widgets/popular_training_list_view.dart';
import 'package:sweat_smart/features/home/widgets/premium_coaching_widgets/premium_personal_coach_container.dart';
import 'package:sweat_smart/features/home/widgets/premium_coaching_widgets/premium_personal_coach_header.dart';
import 'package:sweat_smart/features/home/widgets/popular_training_widgets/workout_types_list_view_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              padding: AppDimensions.paddingL10T30R10B10,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const HomeHeader(),
                    AppDimensions.verticalSpacing28,
                    const OverallTrackerProgressContainer(),
                    AppDimensions.verticalSpacing20,
                    const WorkoutTypesListViewBuilder(),
                    AppDimensions.verticalSpacing15,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const PopularTrainingHeader(),
                        AppDimensions.verticalSpacing5,
                        const PopularTrainingListView()
                      ],
                    ),
                    AppDimensions.verticalSpacing10,
                    const PopularRecipesHeader(),
                    AppDimensions.verticalSpacing5,
                    const PopularRecipesListView(),
                    // Center(
                    //   child: TextButton(
                    //     style: ButtonStyle(
                    //         backgroundColor:
                    //             WidgetStatePropertyAll(AppColors.darkGrey)),
                    //     onPressed: () {},
                    //     child: Text('View More',
                    //         style: AppStyles.font14WhiteMedium),
                    //   ),
                    // ),
                    AppDimensions.verticalSpacing10,
                    const PremiumPersonalCoachHeader(),
                    AppDimensions.verticalSpacing10,
                    const PremiumPersonalCoachContainer()
                  ],
                ),
              ))),
    );
  }
}
