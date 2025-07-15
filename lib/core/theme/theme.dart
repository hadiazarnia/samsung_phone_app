import 'package:flutter/material.dart';
import 'package:samsung_phone_app/core/theme/colors.dart';
import 'package:samsung_phone_app/core/theme/sizes.dart';

final ThemeData appTheme = ThemeData(
  primaryColor: AppColors.primary,
  scaffoldBackgroundColor: AppColors.background,
  textTheme: TextTheme(
    bodyLarge: TextStyle(
      fontSize: AppSizes.fontLarge,
      color: AppColors.textPrimary,
    ),
    bodyMedium: TextStyle(
      fontSize: AppSizes.fontMedium,
      color: AppColors.textSecondary,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusMedium),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.paddingMedium,
        vertical: AppSizes.paddingSmall,
      ),
    ),
  ),
);
