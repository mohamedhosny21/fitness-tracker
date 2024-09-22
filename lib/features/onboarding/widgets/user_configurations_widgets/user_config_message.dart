import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class UserConfigurationMessage extends StatelessWidget {
  const UserConfigurationMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Let’s Get You Set Up For Your Fitness Journey!',
      style: AppStyles.font22WhiteSemiBold,
    );
  }
}
