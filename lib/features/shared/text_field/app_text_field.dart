import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wild_life/themes/foundations/app_colors.dart';
import 'package:wild_life/themes/foundations/color_schemes.dart';
import 'package:wild_life/themes/foundations/text_styles.dart';

class AppTextField extends StatelessWidget {
  final bool isError;
  final IconData? icon;
  final bool? isIconLeft;
  final bool? isSafeText;
  final bool? isMultiLine;
  final String? hintText;
  final String labelText;

  final String? helperText;
  final VoidCallback? onIconPress;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final AutovalidateMode? autovalidateMode;
  final List<TextInputFormatter>? inputFormatters;

  const AppTextField(
      {Key? key,
      required this.labelText,
      this.controller,
      this.validator,
      this.hintText,
      this.helperText,
      this.keyboardType = TextInputType.text,
      this.isError = false,
      this.isIconLeft = false,
      this.isSafeText = false,
      this.icon,
      this.autovalidateMode = AutovalidateMode.onUserInteraction,
      this.inputFormatters,
      this.onIconPress,
      this.isMultiLine})
      : super(key: key);

  UnderlineInputBorder getInputBorderConfig(BuildContext context) {
    return UnderlineInputBorder(
        borderSide:
            BorderSide(color: isError ? colorScheme.error : AppColors.hint));
  }

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);

    if (isIconLeft != null && isIconLeft == false) {
      return TextFormField(
        maxLines: isSafeText == false && isMultiLine == true ? 5 : 1,
        obscureText: isSafeText != null && isSafeText == true ? true : false,
        enableSuggestions:
            isSafeText != null && isSafeText == true ? false : true,
        autocorrect: isSafeText != null && isSafeText == true ? false : true,
        style: fieldLabelStyle.copyWith(color: AppColors.secondary),
        cursorColor: isError ? AppColors.error : AppColors.hint,
        validator: validator,
        keyboardType: keyboardType,
        autovalidateMode: autovalidateMode,
        inputFormatters: inputFormatters,
        onTapOutside: (event) => FocusScope.of(context).unfocus(),
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(14.0),
            alignLabelWithHint: true,
            fillColor: AppColors.textFieldBackground,
            filled: true,
            hintText: hintText,
            labelText: labelText,
            border: getInputBorderConfig(context),
            enabledBorder: getInputBorderConfig(context),
            focusedBorder: getInputBorderConfig(context),
            errorMaxLines: 3,
            labelStyle: isError
                ? fieldLabelStyle.copyWith(color: colorScheme.error)
                : fieldLabelStyle.copyWith(color: AppColors.secondaryText),
            suffixIcon: onIconPress != null && icon != null
                ? IconButton(
                    onPressed: onIconPress,
                    icon: Icon(
                      icon,
                      color: isError ? colorScheme.error : AppColors.hint,
                    ))
                : null,
            helperText: helperText,
            helperMaxLines: 2,
            helperStyle: isError
                ? fieldLabelStyle.copyWith(color: colorScheme.error)
                : fieldLabelStyle),
        controller: controller,
      );
    }
    return TextFormField(
      style: fieldLabelStyle.copyWith(color: AppColors.hint),
      cursorColor: isError ? colorScheme.error : AppColors.hint,
      obscureText: isSafeText != null && isSafeText == true ? true : false,
      enableSuggestions:
          isSafeText != null && isSafeText == true ? false : true,
      autocorrect: isSafeText != null && isSafeText == true ? false : true,
      validator: validator,
      keyboardType: keyboardType,
      autovalidateMode: autovalidateMode,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
          fillColor: AppColors.textFieldBackground,
          filled: true,
          hintText: hintText,
          labelText: labelText,
          border: getInputBorderConfig(context),
          enabledBorder: getInputBorderConfig(context),
          focusedBorder: getInputBorderConfig(context),
          errorMaxLines: 3,
          labelStyle: isError
              ? themeData.textTheme.bodyMedium!
                  .copyWith(color: colorScheme.error)
              : themeData.textTheme.bodyMedium,
          prefixIcon: onIconPress != null && icon != null
              ? IconButton(
                  onPressed: onIconPress,
                  icon: Icon(
                    icon,
                    color: isError ? colorScheme.error : themeData.hintColor,
                  ))
              : null,
          helperText: helperText,
          helperMaxLines: 2,
          helperStyle: isError
              ? themeData.textTheme.bodyMedium!
                  .copyWith(color: colorScheme.error)
              : themeData.textTheme.bodyMedium),
      controller: controller,
    );
  }
}
