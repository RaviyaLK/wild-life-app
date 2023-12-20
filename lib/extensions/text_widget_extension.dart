part of 'extensions.dart';

extension StyledTextExtensions on Text {
  Text asScreenTitle() => Text(
        data ?? '',
        textAlign: textAlign,
        style: screenTitleStyle,
      );

  Text asHeading1() => Text(
        data ?? '',
        textAlign: textAlign,
        style: headingStyle,
      );

  Text asHeading2() => Text(
        data ?? '',
        textAlign: textAlign,
        style: heading2Style,
      );

  Text asFieldLabel() => Text(
        data ?? '',
        textAlign: textAlign,
        style: fieldLabelStyle,
      );

  Text asButton() => Text(
        data ?? '',
        textAlign: textAlign,
        style: buttonStyle,
      );

  Text asTextButton() =>
      Text(data ?? '', textAlign: textAlign, style: textButtonStyle);

  Text asHint() => Text(data ?? '', textAlign: textAlign, style: hintStyle);

  Text asBody() => Text(data ?? '', textAlign: textAlign, style: bodyStyle);

  Text asFootnote() =>
      Text(data ?? '', textAlign: textAlign, style: footnoteStyle);

  Text asTxnInfoLabel() =>
      Text(data ?? '', textAlign: textAlign, style: txnInfoLabelStyle);

  Text asDescription() =>
      Text(data ?? '', textAlign: textAlign, style: descriptionStyle);

  Text asTextButton2() => Text(
        data ?? '',
        textAlign: textAlign,
        style: textButton2Style,
      );

  Text colorRegular() => Text(
        data ?? '',
        textAlign: textAlign,
        style: style?.copyWith(
          color: AppColors.regularText,
        ),
      );

  Text colorGrey() => Text(
        data ?? '',
        textAlign: textAlign,
        style: style?.copyWith(
          color: AppColors.secondaryText,
        ),
      );
  Text colorGreen() => Text(
        data ?? '',
        textAlign: textAlign,
        style: style?.copyWith(
          color: AppColors.textButtonColor,
        ),
      );
  Text bold() => Text(
        data ?? '',
        textAlign: textAlign,
        style: style?.copyWith(fontWeight: FontWeights.bold),
      );

  Text centered() =>
      Text(data ?? '', textAlign: TextAlign.center, style: style);

  Text leftAligned() =>
      Text(data ?? '', textAlign: TextAlign.left, style: style);

  Text rightAligned() =>
      Text(data ?? '', textAlign: TextAlign.right, style: style);

  Text justified() =>
      Text(data ?? '', textAlign: TextAlign.justify, style: style);

  Text underlined() => Text(data ?? '',
      textAlign: textAlign,
      style: style?.copyWith(decoration: TextDecoration.underline));

  Text constraints(
          {int? maxLines,
          TextOverflow? overflow,
          double? fontSize,
          Color? color,
          FontWeight? fontWeight,
          FontStyle? fontStyle,
          double? letterSpacing}) =>
      Text(
        data ?? '',
        textAlign: textAlign,
        overflow: overflow,
        style: style != null
            ? style!.copyWith(
                fontSize: fontSize,
                fontStyle: fontStyle,
                fontWeight: fontWeight,
                letterSpacing: letterSpacing,
                color: color)
            : style,
        maxLines: maxLines,
      );
}
