import 'package:flutter/material.dart';

import '../../../core/theming/styles.dart';

class OnboardingTitle extends StatelessWidget {
  final String title;
  const OnboardingTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppStyles.font25WhiteSemiBold,
    );
  }
}
