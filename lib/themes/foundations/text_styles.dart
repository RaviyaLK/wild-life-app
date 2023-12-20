import 'package:flutter/material.dart';
import 'package:wild_life/themes/foundations/widget_themes/widget_themes.dart';
import 'package:wild_life/themes/tokens/font_sizes.dart';
import 'package:wild_life/themes/tokens/font_weights.dart';

final screenTitleStyle = textTheme.titleSmall!.copyWith(
    fontSize: FontSizes.title, letterSpacing: 0, fontWeight: FontWeights.bold);

final headingStyle = textTheme.titleSmall!.copyWith(
    fontSize: FontSizes.heading1,
    letterSpacing: 0,
    fontWeight: FontWeights.bold);
final heading2Style = textTheme.titleSmall!.copyWith(
    fontSize: FontSizes.heading2,
    letterSpacing: 0,
    fontWeight: FontWeights.medium);

final buttonStyle = textTheme.bodySmall!.copyWith(
    fontSize: FontSizes.body, letterSpacing: 0, fontWeight: FontWeights.black);

final textButtonStyle = textTheme.bodySmall!.copyWith(
    fontSize: FontSizes.body,
    letterSpacing: 0,
    fontWeight: FontWeights.medium,
    decoration: TextDecoration.underline);

final fieldLabelStyle = textTheme.labelSmall!.copyWith(
    fontSize: FontSizes.description,
    letterSpacing: 0,
    fontWeight: FontWeights.light);

final bodyStyle = textTheme.bodySmall!.copyWith(
    fontSize: FontSizes.body,
    letterSpacing: 0,
    fontWeight: FontWeights.regular);

final hintStyle = textTheme.labelSmall!.copyWith(
    fontSize: FontSizes.placeholder,
    letterSpacing: 0,
    fontWeight: FontWeights.light);

final footnoteStyle = textTheme.labelSmall!.copyWith(
    fontSize: FontSizes.footnote,
    letterSpacing: 0,
    fontWeight: FontWeights.regular);

final txnInfoLabelStyle = textTheme.labelSmall!.copyWith(
    fontSize: FontSizes.placeholder,
    letterSpacing: 0,
    fontWeight: FontWeights.regular);

final descriptionStyle = textTheme.bodySmall!.copyWith(
    fontSize: FontSizes.description,
    letterSpacing: 0,
    fontWeight: FontWeights.regular);

final textButton2Style = textTheme.bodySmall!.copyWith(
    fontSize: FontSizes.placeholder,
    letterSpacing: 0,
    fontWeight: FontWeights.medium);
