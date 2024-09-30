import 'package:flutter/material.dart';

import '../../../core/theming/styles.dart';

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Welcome Mohamed 👋',
      style: AppStyles.font18WhiteRegular,
    );
  }
}
