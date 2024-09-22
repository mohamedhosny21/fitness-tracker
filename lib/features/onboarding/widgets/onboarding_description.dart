import 'package:flutter/material.dart';
import 'package:sweat_smart/core/dimensions/app_dimensions.dart';

import '../../../core/theming/styles.dart';

class OnboardingDescription extends StatelessWidget {
  final String description;
  const OnboardingDescription({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppDimensions.paddingSymmetricHorizontal20,
      child: Text(
        textAlign: TextAlign.center,
        description,
        style: AppStyles.font14OffWhiteRegular,
      ),
    );
  }
}
