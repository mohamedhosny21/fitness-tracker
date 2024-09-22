import 'package:flutter/material.dart';

import 'custom_textformfield.dart';

class HeightTextformfield extends StatelessWidget {
  final TextEditingController heightController = TextEditingController();

  HeightTextformfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomTextformfield(
          hintText: 'In Cm',
          labelText: 'Height *',
          controller: heightController,
          keyboardType: TextInputType.number),
    );
  }
}
