import 'package:flutter/material.dart';

enum AppButtonType { primary, outlined, text, fade}

abstract class BaseAppButton extends StatelessWidget {
  final String? label;

  final void Function()? onPressed;
  final AppButtonType type;

  const BaseAppButton({
    Key? key,
    this.label,
  
    this.onPressed,
    required this.type,
  }) : super(key: key);

  Widget body(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return body(context);
  }
}
