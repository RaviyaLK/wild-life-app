import 'package:flutter/material.dart';
import 'package:wild_life/extensions/extensions.dart';

import 'package:wild_life/features/shared/buttons/base_button.dart';
import 'package:wild_life/themes/foundations/app_colors.dart';
import 'package:wild_life/themes/foundations/text_styles.dart';

class AppButton extends BaseAppButton {
  const AppButton._({
    super.key,
    super.label,
    required super.onPressed,
    required super.type,
  });

  @override
  Widget body(BuildContext context) {
    final elevatedButtonColors = context.elevatedButtonColors;
    final colorScheme = context.colorScheme;

    switch (type) {
      case AppButtonType.text:
        return TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            foregroundColor: AppColors.textButtonColor,
          ),
          child: Text(label!),
        );

      case AppButtonType.primary:
        return ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
                  textStyle: buttonStyle,
                  backgroundColor: colorScheme.primary,
                  foregroundColor: AppColors.regularText)
              .merge(ButtonStyle(
                  elevation: MaterialStateProperty.resolveWith<double>(
            (Set<MaterialState> states) => 0,
          ))),
          child: Text(label!),
        );

      case AppButtonType.fade:
        return ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.fadeButtonBackgroundColor,
                  foregroundColor: AppColors.fadeButtonTextColor)
              .merge(ButtonStyle(
                  elevation: MaterialStateProperty.resolveWith<double>(
            (Set<MaterialState> states) => 0,
          ))),
          child: Text(label!),
        );

      case AppButtonType.outlined:
        return OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.transparent,
            foregroundColor: AppColors.regularText,
            padding: const EdgeInsets.all(14),
            side: const BorderSide(color: AppColors.secondary),
          ).merge(
            ButtonStyle(
              elevation: MaterialStateProperty.resolveWith<double>(
                (Set<MaterialState> states) => 6,
              ),
            ),
          ),
          child: Text(label!),
        );

      default:
        return ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: elevatedButtonColors?.backgroundColor,
            foregroundColor: elevatedButtonColors?.textColor,
          ).merge(ButtonStyle(
              elevation: MaterialStateProperty.resolveWith<double>(
            (Set<MaterialState> states) => 0,
          ))),
          child: Text(label!),
        );
    }
  }

  const factory AppButton(
      {required String label,
      required void Function()? onPressed}) = _AppButton;

  const factory AppButton.text(
      {required String label,
      required void Function()? onPressed}) = _PrimaryAppTextButton;

  const factory AppButton.outlined(
      {required String label,
      required void Function()? onPressed}) = _AppOutlinedButton;

  const factory AppButton.primary({
    String label,
    void Function() onPressed,
  }) = _PrimaryAppButton;

  const factory AppButton.fade({
    required String label,
    required void Function()? onPressed,
  }) = _FadeAppButton;
}

class _AppButton extends AppButton {
  const _AppButton({required super.label, required super.onPressed})
      : super._(type: AppButtonType.primary);
}

class _PrimaryAppTextButton extends AppButton {
  const _PrimaryAppTextButton({required super.label, required super.onPressed})
      : super._(type: AppButtonType.text);
}

class _PrimaryAppButton extends AppButton {
  const _PrimaryAppButton({super.label, super.onPressed})
      : super._(type: AppButtonType.primary);
}

class _AppOutlinedButton extends AppButton {
  const _AppOutlinedButton({super.label, super.onPressed})
      : super._(type: AppButtonType.outlined);
}

class _FadeAppButton extends AppButton {
  const _FadeAppButton({required super.label, required super.onPressed})
      : super._(type: AppButtonType.fade);
}
