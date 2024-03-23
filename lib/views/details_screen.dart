import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_bike_shop/routes/app_routes_name.dart';
import 'package:my_bike_shop/utils/size_utils.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

import '../theme/app_decoration.dart';
import '../theme/custom_button_style.dart';
import '../theme/custom_text_style.dart';
import '../theme/theme_helper.dart';
import '../utils/image_constant.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_icon_button.dart';
import '../widgets/custom_image_view.dart';
import '../widgets/custom_outlined_button.dart';
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: 800.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle476,
                      height: 800.v,
                      width: 349.h,
                      alignment: Alignment.centerRight),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: SingleChildScrollView(
                          child: SizedBox(
                              height: 1464.v,
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: SizedBox(
                                            height: 790.v,
                                            width: double.maxFinite,
                                            child: Stack(
                                                alignment:
                                                Alignment.bottomCenter,
                                                children: [
                                                  Align(
                                                      alignment:
                                                      Alignment.topCenter,
                                                      child: Container(
                                                          width:
                                                          double.maxFinite,
                                                          margin: EdgeInsets.only(
                                                              bottom: 340.v),
                                                          decoration: AppDecoration.gradientBlueGrayToBlueGray.copyWith(
                                                              borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder30),
                                                          child:
                                                          OutlineGradientButton(
                                                              padding: EdgeInsets.only(
                                                                  left: 2.h,
                                                                  top: 2.v,
                                                                  right:
                                                                  2.h,
                                                                  bottom:
                                                                  2.v),
                                                              strokeWidth:
                                                              2.h,
                                                              gradient: LinearGradient(
                                                                  begin: Alignment(0.52, 0),
                                                                  end: Alignment(0.52, 0.14),
                                                                  colors: [
                                                                    appTheme
                                                                        .whiteA70001
                                                                        .withOpacity(0.2),
                                                                    appTheme
                                                                        .black900
                                                                        .withOpacity(0.2)
                                                                  ]),
                                                              corners: Corners(topLeft: Radius.circular(30), topRight: Radius.circular(30), bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
                                                              child: Padding(
                                                                  padding: EdgeInsets.symmetric(horizontal: 42.h, vertical: 30.v),
                                                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                    CustomElevatedButton(
                                                                        width:
                                                                        129.h,
                                                                        text: "lbl_description".tr,
                                                                        margin: EdgeInsets.only(bottom: 343.v),
                                                                        onPressed: () {
                                                                          onTapDescription();
                                                                        }),
                                                                    CustomElevatedButton(
                                                                        width:
                                                                        142.h,
                                                                        text: "lbl_specification".tr,
                                                                        margin: EdgeInsets.only(right: 1.h, bottom: 343.v))
                                                                  ]))))),
                                                  _buildFrame()
                                                ]))),
                                    _buildImage(),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                            padding:
                                            EdgeInsets.only(left: 20.h),
                                            child: Row(children: [
                                              OutlineGradientButton(
                                                  padding: EdgeInsets.only(
                                                      left: 1.h,
                                                      top: 1.v,
                                                      right: 1.h,
                                                      bottom: 1.v),
                                                  strokeWidth: 1.h,
                                                  gradient: LinearGradient(
                                                      begin: Alignment(0, 0),
                                                      end: Alignment(1, 1),
                                                      colors: [
                                                        appTheme.whiteA70001
                                                            .withOpacity(0.6),
                                                        appTheme.black900
                                                            .withOpacity(0.6)
                                                      ]),
                                                  corners: Corners(
                                                      topLeft:
                                                      Radius.circular(10),
                                                      topRight:
                                                      Radius.circular(10),
                                                      bottomLeft:
                                                      Radius.circular(10),
                                                      bottomRight:
                                                      Radius.circular(10)),
                                                  child: CustomIconButton(
                                                      height: 44.adaptSize,
                                                      width: 44.adaptSize,
                                                      padding:
                                                      EdgeInsets.all(8.h),
                                                      onTap: () {
                                                        onTapBtnArrowLeft();
                                                      },
                                                      child: CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgArrowLeft))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 56.h,
                                                      top: 6.v,
                                                      bottom: 7.v),
                                                  child: Text(
                                                      "lbl_peugeot_lr01".tr,
                                                      style: CustomTextStyles
                                                          .titleLargePoppinsWhiteA70001Bold))
                                            ])))
                                  ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildFrame() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text("lbl_peugeot_lr01".tr,
                      style: theme.textTheme.titleMedium)),
              SizedBox(height: 8.v),
              Container(
                  width: 335.h,
                  margin: EdgeInsets.only(left: 20.h, right: 35.h),
                  child: Text("msg_the_lr01_uses_the".tr,
                      maxLines: null,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumWhiteA7000115)),
              SizedBox(height: 24.v),
              Container(
                  width: double.maxFinite,
                  decoration: AppDecoration.outline.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder50),
                  child: OutlineGradientButton(
                      padding: EdgeInsets.only(
                          left: 2.h, top: 2.v, right: 2.h, bottom: 2.v),
                      strokeWidth: 2.h,
                      gradient: LinearGradient(
                          begin: Alignment(0.5, 0),
                          end: Alignment(0.5, 0.69),
                          colors: [
                            appTheme.whiteA70001.withOpacity(0.2),
                            appTheme.black900.withOpacity(0.2)
                          ]),
                      corners: Corners(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50)),
                      child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 33.h, vertical: 28.v),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding:
                                    EdgeInsets.symmetric(vertical: 4.v),
                                    child: Text("lbl_1_999_99".tr,
                                        style: theme.textTheme.headlineSmall)),
                                OutlineGradientButton(
                                    padding: EdgeInsets.only(
                                        left: 2.h,
                                        top: 2.v,
                                        right: 2.h,
                                        bottom: 2.v),
                                    strokeWidth: 2.h,
                                    gradient: LinearGradient(
                                        begin: Alignment(0, 0),
                                        end: Alignment(1, 1),
                                        colors: [
                                          appTheme.whiteA70001.withOpacity(0.6),
                                          appTheme.black900.withOpacity(0.6)
                                        ]),
                                    corners: Corners(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                    child: CustomOutlinedButton(
                                        width: 160.h,
                                        text: "lbl_add_to_cart".tr,
                                        buttonStyle: CustomButtonStyles.none,
                                        decoration: CustomButtonStyles
                                            .gradientCyanToIndigoADecoration,
                                        buttonTextStyle:
                                        CustomTextStyles.titleSmallMedium))
                              ]))))
            ]));
  }

  /// Section Widget
  Widget _buildImage() {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            height: 289.v,
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 197.v),
            child: Stack(alignment: Alignment.bottomCenter, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgRobertByeTg36289x385,
                  height: 289.v,
                  width: 385.h,
                  alignment: Alignment.center),
              CustomImageView(
                  imagePath: ImageConstant.imgGroup6,
                  height: 14.v,
                  width: 385.h,
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.only(bottom: 21.v))
            ])));
  }

  /// Navigates to the sevenScreen when the action is triggered.
  onTapDescription() {
    Get.toNamed(
      RoutesName.shoppingCartScreen,
    );
  }

  /// Navigates to the previous screen.
  onTapBtnArrowLeft() {
    Get.back();
  }
}
