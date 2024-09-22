import 'package:flutter/material.dart';
import 'package:sweat_smart/core/dimensions/app_dimensions.dart';

import 'user_configurations_widgets/height_textformfield.dart';
import 'user_configurations_widgets/weight_textformfield.dart';

class UsersDimensionsTextformfield extends StatelessWidget {
  const UsersDimensionsTextformfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Row(
        children: [
          const WeightTextformfield(),
          AppDimensions.horizontalSpacing8,
          HeightTextformfield()
        ],
      ),
    );
  }
}
