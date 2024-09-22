import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sweat_smart/core/constants/app_constants.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class CustomDropDownButtonTextformfield extends StatefulWidget {
  final String labelText;
  final String hintText;
  final int generatedListLength;
  final String valueType;
  final int? startYear;
  const CustomDropDownButtonTextformfield({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.generatedListLength,
    this.startYear,
    required this.valueType,
  });

  @override
  State<CustomDropDownButtonTextformfield> createState() =>
      _CustomDropDownButtonTextformfieldState();
}

class _CustomDropDownButtonTextformfieldState
    extends State<CustomDropDownButtonTextformfield> {
  dynamic value;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      menuMaxHeight: 400.h,
      hint: Text(
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        widget.hintText,
        style: AppStyles.font11greyRegular,
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: _validator,
      decoration: _buildInputDecoration(),
      isDense: true,
      style: AppStyles.font14LightGreenRegular,
      selectedItemBuilder: _selectedItemBuilder,
      dropdownColor: Colors.white,
      alignment: Alignment.center,
      iconSize: 16.w,
      value: value,
      items: _generateDropDownMenuItems(),
      onChanged: (value) {
        setState(() {
          this.value = value;
        });
      },
    );
  }

  InputDecoration _buildInputDecoration() {
    return InputDecoration(
        isDense: true,
        labelText: '${widget.labelText} *',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelStyle: AppStyles.font20WhiteMedium.copyWith(fontSize: 16.sp),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
          color: AppColors.lightGreen,
        )),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.lightGreen, width: 2.5)),
        errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red)));
  }

  String? _validator(value) =>
      value == null || value.toString().isEmpty ? 'required !' : null;

  List<Widget> _selectedItemBuilder(_) {
    final List<dynamic> items = List.generate(
        widget.generatedListLength,
        (index) => widget.valueType == 'year'
            ? widget.startYear! + index
            : widget.valueType == 'month'
                ? AppConstants.months[index]
                : index + 1,
        growable: false);
    return items.map((item) {
      return Text(item.toString());
    }).toList();
  }

  List<DropdownMenuItem> _generateDropDownMenuItems() {
    return List.generate(
      widget.generatedListLength,
      growable: false,
      (index) {
        final dynamic item = widget.valueType == 'year'
            ? widget.startYear! + index
            : widget.valueType == 'month'
                ? AppConstants.months[index]
                : index + 1;
        return DropdownMenuItem(
          value: item,
          child: Text(item.toString(),
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400)),
        );
      },
    );
  }
}
