
import 'package:my_bike_shop/utils/size_utils.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:flutter/material.dart';

import '../../theme/theme_helper.dart';
import '../../utils/image_constant.dart';
import '../custom_icon_button.dart';
import '../custom_image_view.dart';


// ignore: must_be_immutable
class AppbarTrailingIconbutton extends StatelessWidget {
  AppbarTrailingIconbutton({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: OutlineGradientButton(
          padding: EdgeInsets.only(
            left: 1.h,
            top: 1.v,
            right: 1.h,
            bottom: 1.v,
          ),
          strokeWidth: 1.h,
          gradient: LinearGradient(
            begin: Alignment(0, 0),
            end: Alignment(1, 1),
            colors: [
              appTheme.whiteA70001.withOpacity(0.6),
              appTheme.black900.withOpacity(0.6),
            ],
          ),
          corners: Corners(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          child: CustomIconButton(
            height: 44.adaptSize,
            width: 44.adaptSize,
            decoration: IconButtonStyleHelper.gradientCyanToIndigoATL10,
            child: CustomImageView(
              imagePath: ImageConstant.imgSearch,
            ),
          ),
        ),
      ),
    );
  }
}
