import 'package:flutter/material.dart';
import 'package:sweat_smart/core/app_router/routes.dart';
import 'package:sweat_smart/core/dimensions/app_dimensions.dart';
import 'package:sweat_smart/features/onboarding/widgets/user_configurations_widgets/name_textformfield.dart';
import 'package:sweat_smart/features/onboarding/widgets/onboarding_custom_button.dart';
import 'package:sweat_smart/features/onboarding/widgets/user_configurations_widgets/user_birth_dates_information.dart';
import 'package:sweat_smart/features/onboarding/widgets/user_configurations_widgets/user_config_message.dart';
import 'package:sweat_smart/features/onboarding/widgets/users_dimensions_textformfield.dart';

class UserConfigOnboardingScreen extends StatelessWidget {
  UserConfigOnboardingScreen({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: AppDimensions.paddingL10T80R10B0,
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const UserConfigurationMessage(),
                AppDimensions.verticalSpacing70,
                NameTextformfield(),
                AppDimensions.verticalSpacing50,
                const UsersDimensionsTextformfield(),
                AppDimensions.verticalSpacing50,
                const UserBirthDatesInformation(),
                const Spacer(),
                OnboardingCustomButton(
                  text: 'Get Started',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        AppRoutes.homeScreen,
                        (route) => false,
                      );
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
