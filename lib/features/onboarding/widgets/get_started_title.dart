import 'package:flutter/material.dart';

import '../../../core/theming/styles.dart';

class GetStartedTitle extends StatelessWidget {
  final String title;
  const GetStartedTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppStyles.font25WhiteSemiBold,
    );
  }
}
