import 'package:flutter/material.dart';
import 'package:my_bike_shop/theme/theme_helper.dart';
import 'package:my_bike_shop/utils/size_utils.dart';


class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray90002,
      );
  static BoxDecoration get fillBluegray100 => BoxDecoration(
        color: appTheme.blueGray100,
      );

  // Gradient decorations
  static BoxDecoration get gradientBlueGrayToBlueGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.06, -0.02),
          end: Alignment(0.51, 0.61),
          colors: [
            appTheme.blueGray80002,
            appTheme.blueGray900,
          ],
        ),
      );
  static BoxDecoration get gradientBlueGrayToBluegray70001 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.82, 1),
          end: Alignment(0.2, 0),
          colors: [
            appTheme.blueGray80001,
            appTheme.blueGray70001,
          ],
        ),
      );
  static BoxDecoration get gradientBlueGrayToBluegray700011 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1, 1),
          end: Alignment(0.02, 0.04),
          colors: [
            appTheme.blueGray80001,
            appTheme.blueGray70001,
          ],
        ),
      );
  static BoxDecoration get gradientCyanToIndigoA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.05, 0),
          end: Alignment(0.88, 1),
          colors: [
            appTheme.cyan400,
            appTheme.indigoA400,
          ],
        ),
      );
  static BoxDecoration get gradientCyanToIndigoA400 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.05, 0),
          end: Alignment(1, 1.22),
          colors: [
            appTheme.cyan400,
            appTheme.indigoA400,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outline => BoxDecoration(
        color: appTheme.blueGray90004,
        boxShadow: [
          BoxShadow(
            color: appTheme.gray90001,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -10,
            ),
          ),
        ],
      );
  static BoxDecoration get outline1 => BoxDecoration(
        color: appTheme.blueGray80002,
      );
  static BoxDecoration get outline2 => BoxDecoration(
        color: appTheme.gray90003,
      );
}

class BorderRadiusStyle {
  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder30 => BorderRadius.circular(
        30.h,
      );
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        5.h,
      );
  static BorderRadius get roundedBorder50 => BorderRadius.circular(
        50.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
