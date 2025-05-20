import 'package:flutter/material.dart';
import 'package:internsala_test/core/app_font_size.dart';
import 'package:internsala_test/gen/colors.gen.dart';
import 'package:internsala_test/gen/fonts.gen.dart';

class AppTextStyle {
  AppTextStyle._();

  static TextTheme get lightTextTheme => const TextTheme().copyWith(
    displayLarge: displayLarge,
    displayMedium: displayMedium,
    displaySmall: displaySmall,
    headlineLarge: headlineLarge,
    headlineMedium: headlineMedium,
    headlineSmall: headlineSmall,
    titleLarge: titleLarge,
    titleMedium: titleMedium,
    titleSmall: titleSmall,
  );

  static TextStyle get _baseHeadline => TextStyle(
    fontFamily: FontFamily.roboto,
    color: AppColor.black,
    height: 1.2,
  );

  static TextStyle get displayLarge =>
      _baseHeadline.copyWith(fontSize: AppFontSize.displayLarge);
  static TextStyle get displayMedium =>
      _baseHeadline.copyWith(fontSize: AppFontSize.displayMedium);
  static TextStyle get displaySmall =>
      _baseHeadline.copyWith(fontSize: AppFontSize.displaySmall);
  static TextStyle get headlineLarge =>
      _baseHeadline.copyWith(fontSize: AppFontSize.headlineLarge);
  static TextStyle get headlineMedium =>
      _baseHeadline.copyWith(fontSize: AppFontSize.headlineMedium);
  static TextStyle get headlineSmall =>
      _baseHeadline.copyWith(fontSize: AppFontSize.headlineSmall);
  static TextStyle get titleLarge =>
      _baseHeadline.copyWith(fontSize: AppFontSize.titleLarge);
  static TextStyle get titleMedium =>
      _baseHeadline.copyWith(fontSize: AppFontSize.titleMedium);
  static TextStyle get titleSmall =>
      _baseHeadline.copyWith(fontSize: AppFontSize.titleSmall);
  static TextStyle get bodyLarge =>
      _baseHeadline.copyWith(fontSize: AppFontSize.bodyLarge);
  static TextStyle get bodyMedium =>
      _baseHeadline.copyWith(fontSize: AppFontSize.bodyMedium);
  static TextStyle get bodySmall =>
      _baseHeadline.copyWith(fontSize: AppFontSize.bodySmall);
  static TextStyle get labelLarge =>
      _baseHeadline.copyWith(fontSize: AppFontSize.labelLarge);
  static TextStyle get labelMedium =>
      _baseHeadline.copyWith(fontSize: AppFontSize.labelMedium);
  static TextStyle get labelSmall =>
      _baseHeadline.copyWith(fontSize: AppFontSize.labelSmall);
}
