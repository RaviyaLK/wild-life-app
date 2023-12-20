import 'package:flutter/material.dart';
import 'package:wild_life/themes/foundations/app_colors.dart';
import 'package:wild_life/themes/foundations/color_schemes.dart';
import 'package:wild_life/themes/foundations/widget_themes/widget_themes.dart';
import 'package:wild_life/themes/theme_extensions/elevated_button_colors.dart';

@immutable
class AppTheme {
  const AppTheme._();

  static ThemeData get light => ThemeData.light(useMaterial3: true).copyWith(
        extensions: const <ThemeExtension<dynamic>>[ElevatedButtonColors.light],
        textTheme: textTheme,
        brightness: Brightness.light,
        scaffoldBackgroundColor: AppColors.background,
        elevatedButtonTheme: elevatedButtonTheme,
        colorScheme: colorScheme,
      );
}
