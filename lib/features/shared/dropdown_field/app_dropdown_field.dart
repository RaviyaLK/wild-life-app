import 'package:flutter/material.dart';
import 'package:wild_life/themes/foundations/app_colors.dart';
import 'package:wild_life/themes/foundations/text_styles.dart';

class AppDropDownField extends StatefulWidget {
  final String labelText;
  final List<Map<String, String>> items;

  const AppDropDownField({
    Key? key,
    required this.labelText,
    required this.items,
  }) : super(key: key);

  @override
  State<AppDropDownField> createState() => _AppDropDownFieldState();
}

class _AppDropDownFieldState extends State<AppDropDownField> {
  String? selectedValue;

  UnderlineInputBorder getInputBorderConfig(BuildContext context) {
    return const UnderlineInputBorder(
      borderSide: BorderSide(color: AppColors.hint),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: selectedValue,
      style: fieldLabelStyle.copyWith(color: AppColors.secondary),
      items: widget.items.map<DropdownMenuItem<String>>(
        (Map<String, String> item) {
          return DropdownMenuItem<String>(
            value: item['value'],
            child: Text(item['label'] ?? ''),
          );
        },
      ).toList(),
      onChanged: (value) {
        setState(() {
          selectedValue = value;
        });
      },
      dropdownColor: AppColors.textFieldBackground,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(14.0),
        fillColor: AppColors.textFieldBackground,
        filled: true,
        labelText: widget.labelText,
        border: getInputBorderConfig(context),
        enabledBorder: getInputBorderConfig(context),
        focusedBorder: getInputBorderConfig(context),
        errorMaxLines: 3,
        labelStyle: fieldLabelStyle.copyWith(color: AppColors.secondaryText),
      ),
    );
  }
}
