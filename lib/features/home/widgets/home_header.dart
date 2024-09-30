import 'package:flutter/material.dart';
import 'package:sweat_smart/features/home/widgets/welcome_message.dart';

import 'notification_icon.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [WelcomeMessage(), NotificationIcon()],
    );
  }
}
