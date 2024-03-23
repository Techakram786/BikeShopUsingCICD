import 'package:flutter/material.dart';
import 'package:my_bike_shop/theme/theme_helper.dart';
import 'package:my_bike_shop/utils/size_utils.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeWhiteA70001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA70001,
      );
  static get bodyMediumWhiteA70001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA70001.withOpacity(0.6),
      );
  static get bodyMediumWhiteA7000115 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA70001.withOpacity(0.6),
        fontSize: 15.fSize,
      );
  static get bodyMediumWhiteA7000115_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA70001.withOpacity(0.6),
        fontSize: 15.fSize,
      );
  // Label text style
  static get labelLargeSemiBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelLargeWhiteA70001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA70001,
      );
  static get labelLargeWhiteA70001Bold => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA70001,
        fontWeight: FontWeight.w700,
      );
  // Title text style
  static get titleLargePoppinsWhiteA70001 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargePoppinsWhiteA70001Bold =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeWhiteA70001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA70001,
      );
  static get titleMediumLightblue400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.lightBlue400,
      );
  static get titleSmallBlue40002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blue40002,
      );
  static get titleSmallMedium => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallWhiteA70001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA70001.withOpacity(0.87),
      );
  static get titleSmallWhiteA70001Medium =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA70001.withOpacity(0.87),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallWhiteA70001Medium_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA70001.withOpacity(0.6),
        fontWeight: FontWeight.w500,
      );
  static get titleSmall_1 => theme.textTheme.titleSmall!;
}

extension on TextStyle {
  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }
}
