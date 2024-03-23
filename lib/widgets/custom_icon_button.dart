import 'package:flutter/material.dart';
import 'package:my_bike_shop/utils/size_utils.dart';

import '../theme/theme_helper.dart';


class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  borderRadius: BorderRadius.circular(10.h),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.gray90002,
                      spreadRadius: 2.h,
                      blurRadius: 2.h,
                      offset: Offset(
                        0,
                        20,
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
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get gradientCyanToIndigoATL10 => BoxDecoration(
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
  static BoxDecoration get gradientBlueGrayToBlueGray => BoxDecoration(
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
  static BoxDecoration get gradientBlueGrayToGray => BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        gradient: LinearGradient(
          begin: Alignment(0.28, 0),
          end: Alignment(0.5, 0),
          colors: [
            appTheme.blueGray80001.withOpacity(0.6),
            appTheme.gray90099,
          ],
        ),
      );
}
