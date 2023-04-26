// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// Project imports:
import 'app_colors.dart';

class AppTextStyle {
  static TextStyle heading1Text = antonTextStyle.copyWith(
      fontSize: headingOneSize,
      fontWeight: FontWeight.w500,
      color: AppColors.primaryColor);

  static TextStyle heading2Text = ubuntuMonoTextStyle.copyWith(
    fontSize: headingTwoSize,
    fontWeight: FontWeight.w700,
  );
  static TextStyle pageTitleText = ubuntuMonoTextStyle.copyWith(
      fontSize: headingTwoSize,
      fontWeight: FontWeight.w700,
      color: AppColors.lightViolet);
  static TextStyle pageTitleThickText = ubuntuMonoTextStyle.copyWith(
      fontSize: headingTwoSize,
      fontWeight: FontWeight.w100,
      color: AppColors.lightViolet);

  static TextStyle buttonText = ubuntuMonoTextStyle.copyWith(
      fontSize: headingTwoSize, fontWeight: FontWeight.w500);

  static TextStyle buttonWhiteText = ubuntuMonoTextStyle.copyWith(
      fontSize: headingTwoSize,
      fontWeight: FontWeight.w500,
      color: AppColors.white);

  static TextStyle smallButtonWhiteText = ubuntuMonoTextStyle.copyWith(
      fontSize: snackBarSize,
      fontWeight: FontWeight.bold,
      color: AppColors.white);

  static TextStyle snackBarWhiteText = robotoTextStyle.copyWith(
      fontSize: snackBarSize,
      fontWeight: FontWeight.w500,
      color: AppColors.white);

  static TextStyle smallTextGrey = robotoTextStyle.copyWith(
      fontSize: smallTextSize,
      fontWeight: FontWeight.w500,
      color: AppColors.darkGray,
      height: 1.5);

  static TextStyle smallTextBlack = robotoTextStyle.copyWith(
      fontSize: smallTextSize,
      fontWeight: FontWeight.w500,
      color: AppColors.black,
      height: 1.5);

  static TextStyle smallTextViolet = robotoTextStyle.copyWith(
      fontSize: smallTextSize,
      fontWeight: FontWeight.w500,
      color: AppColors.lightViolet,
      height: 2);

  static TextStyle errorTextRed = robotoTextStyle.copyWith(
    fontSize: smallTextSize,
    fontWeight: FontWeight.w500,
    color: AppColors.error,
  );

  static final TextStyle antonTextStyle = GoogleFonts.anton();
  static final TextStyle ubuntuMonoTextStyle = GoogleFonts.ubuntuMono();
  static final TextStyle robotoTextStyle = GoogleFonts.roboto();

  static final double headingOneSize = 30.sp;
  static final double headingTwoSize = 22.sp;
  static final double snackBarSize = 18.sp;
  static final double smallTextSize = 14.sp;
}
