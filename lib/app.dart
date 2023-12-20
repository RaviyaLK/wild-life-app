import 'package:flutter/material.dart';
import 'package:wild_life/router/router.dart';
import 'package:wild_life/themes/themes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final lightTheme = AppTheme.light;
    return MaterialApp.router(
      theme: lightTheme,
      themeMode: ThemeMode.light,
      routerConfig: routerConfig,
      debugShowCheckedModeBanner: false,
      onGenerateTitle: (context) => 'Wild Life App',
    );
  }
}
