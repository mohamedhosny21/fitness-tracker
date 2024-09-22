import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sweat_smart/core/theming/styles.dart';

import 'custom_textformfield.dart';

class WeightTextformfield extends StatefulWidget {
  const WeightTextformfield({super.key});

  @override
  State<WeightTextformfield> createState() => _WeightTextformfieldState();
}

class _WeightTextformfieldState extends State<WeightTextformfield> {
  final TextEditingController weightController = TextEditingController();
  String value = 'Kg';
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: CustomTextformfield(
        hintText: 'In Kg/Pounds',
        labelText: 'Weight *',
        controller: weightController,
        keyboardType: TextInputType.number,
        suffix: DropdownButton(
          isDense: true,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
          selectedItemBuilder: _selectedItemBuilder,
          dropdownColor: Colors.white,
          alignment: Alignment.center,
          iconSize: 20.w,
          value: value,
          underline: const SizedBox(),
          items: _generateDropDownMenuItemsList,
          onChanged: (value) {
            setState(() {
              this.value = value!;
            });
          },
        ),
      ),
    );
  }

  List<Widget> _selectedItemBuilder(_) {
    final List<String> items = ['Kg', 'Pounds'];
    return items.map((String item) {
      return Text(item);
    }).toList();
  }

  List<DropdownMenuItem<String>> get _generateDropDownMenuItemsList {
    return [
      DropdownMenuItem(
        value: 'Kg',
        child: Text(
          'Kg',
          style:
              AppStyles.font14LightGreenRegular.copyWith(color: Colors.black),
        ),
      ),
      DropdownMenuItem(
        value: 'Pounds',
        child: Text(
          'Pounds',
          style:
              AppStyles.font14LightGreenRegular.copyWith(color: Colors.black),
        ),
      )
    ];
  }
}
