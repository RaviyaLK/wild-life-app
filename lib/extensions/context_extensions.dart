part of 'extensions.dart';

extension ContextExtension on BuildContext {
  ThemeData get themeData => Theme.of(this);
  Size get screenSize => MediaQuery.of(this).size;
  ColorScheme get colorScheme => themeData.colorScheme;
  ElevatedButtonColors? get elevatedButtonColors =>
      themeData.extension<ElevatedButtonColors>();
}
