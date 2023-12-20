import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wild_life/constants/constants.dart';
import 'package:wild_life/features/authentication/sign_in/sign_in_screen.dart';
import 'package:wild_life/themes/tokens/static_assets.dart';

class SplashScreen extends StatefulWidget {
  static const String path = '/';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(StaticDurations.splashScreenLoading, () {
      context.go(SignInScreen.path);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            StaticAssets.backgroundImagePath,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
