import 'package:flutter/material.dart';

import '../../../core/theming/styles.dart';

class PopularRecipesHeader extends StatelessWidget {
  const PopularRecipesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Eat Smart: Guilt-Free Recipes',
            style: AppStyles.font14WhiteMedium),
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
