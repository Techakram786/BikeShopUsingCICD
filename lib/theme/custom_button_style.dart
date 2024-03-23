import 'package:flutter/material.dart';
import 'package:my_bike_shop/theme/theme_helper.dart';
import 'package:my_bike_shop/utils/size_utils.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Gradient button style
  static BoxDecoration get gradientBlueGrayToBlueGrayDecoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        gradient: LinearGradient(
          begin: Alignment(0.36, 0),
          end: Alignment(0.58, 0),
          colors: [
            appTheme.blueGray80002,
            appTheme.blueGray900,
          ],
        ),
      );
  static BoxDecoration get gradientCyanToIndigoADecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray900,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              30,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(0.05, 0),
          end: Alignment(1.0, 1),
          colors: [
            appTheme.cyan400,
            appTheme.indigoA400,
          ],
        ),
      );
  static BoxDecoration get gradientCyanToIndigoATL10Decoration => BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        gradient: LinearGradient(
          begin: Alignment(0.05, 0),
          end: Alignment(1.0, 1),
          colors: [
            appTheme.cyan400,
            appTheme.indigoA400,
          ],
        ),
      );
  static BoxDecoration get gradientCyanToIndigoATL101Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        gradient: LinearGradient(
          begin: Alignment(0.05, 0),
          end: Alignment(1.0, 1),
          colors: [
            appTheme.cyan400,
            appTheme.indigoA400,
          ],
        ),
      );

  // Outline button style
  static ButtonStyle get outlineBlueGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray800,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
        shadowColor: appTheme.blueGray90003,
        elevation: 4,
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
