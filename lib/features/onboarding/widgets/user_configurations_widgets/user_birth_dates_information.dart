import 'package:flutter/material.dart';

import '../../../../core/dimensions/app_dimensions.dart';
import 'custom_drop_down_button_textformfield.dart';

class UserBirthDatesInformation extends StatelessWidget {
  const UserBirthDatesInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Row(
        children: [
          const Expanded(
              child: CustomDropDownButtonTextformfield(
                  valueType: 'day',
                  labelText: 'Day of Birth',
                  hintText: 'Select Day',
                  generatedListLength: 31)),
          AppDimensions.horizontalSpacing8,
          const Expanded(
              child: CustomDropDownButtonTextformfield(
                  valueType: 'month',
                  labelText: 'Month',
                  hintText: 'Select Month ',
                  generatedListLength: 12)),
          AppDimensions.horizontalSpacing8,
          Expanded(
            child: CustomDropDownButtonTextformfield(
              valueType: 'year',
              labelText: 'Year',
              hintText: 'Select Year',
              startYear: 1930,
              generatedListLength: DateTime.now().year - 1930,
            ),
          )
        ],
      ),
    );
  }
}
