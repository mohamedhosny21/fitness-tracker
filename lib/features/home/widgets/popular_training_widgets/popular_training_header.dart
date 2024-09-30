import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class PopularTrainingHeader extends StatelessWidget {
  const PopularTrainingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Popular Training',
          style: AppStyles.font14WhiteMedium,
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              'See all',
              style: AppStyles.font14BlueRegular,
            ))
      ],
    );
  }
}
