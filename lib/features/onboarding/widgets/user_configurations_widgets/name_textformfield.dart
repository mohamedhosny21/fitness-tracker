import 'package:flutter/material.dart';

import 'custom_textformfield.dart';

class NameTextformfield extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();

  NameTextformfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: CustomTextformfield(
          hintText: 'Enter Your Name',
          labelText: 'Name *',
          controller: nameController,
          keyboardType: TextInputType.name),
    );
  }
}
