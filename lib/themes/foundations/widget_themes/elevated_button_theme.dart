part of 'widget_themes.dart';

final elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        textStyle: buttonStyle,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(Dimensions.elevatedButtonBorderRadius)),
        ),
        padding: const EdgeInsets.symmetric(
            vertical: Dimensions.elevatedButtonVerticalPadding,
            horizontal: Dimensions.elevatedButtonHorizontalPadding),
        elevation: Dimensions.elevatedButtonElevation));
