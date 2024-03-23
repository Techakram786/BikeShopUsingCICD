import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_bike_shop/routes/app_routes_name.dart';
import 'package:my_bike_shop/utils/size_utils.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

import '../../theme/app_decoration.dart';
import '../../theme/custom_button_style.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../utils/image_constant.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_outlined_button.dart';
class MyShoppingCartScreen extends StatelessWidget {
  const MyShoppingCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 16.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 20.h),
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
                                                appTheme.whiteA70001.withOpacity(0.6),
                                                appTheme.black900.withOpacity(0.6)
                                              ]),
                                          corners: Corners(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10),
                                              bottomLeft: Radius.circular(10),
                                              bottomRight: Radius.circular(10)),
                                          child: CustomIconButton(
                                              height: 44.adaptSize,
                                              width: 44.adaptSize,
                                              padding: EdgeInsets.all(16.h),
                                              onTap: () {
                                               Get.toNamed(RoutesName.homeScreen);
                                              },
                                              child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgArrowLeftWhiteA70001))),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 43.h, top: 6.v, bottom: 7.v),
                                          child: Text("msg_my_shopping_cart".tr,
                                              style: CustomTextStyles
                                                  .titleLargePoppinsWhiteA70001Bold))
                                    ]))),
                            Column(
                              children: [
                                SizedBox(height: 32.v),
                                _buildItems1(),
                                SizedBox(height: 16.v),
                                Divider(),
                                SizedBox(height: 16.v),
                                _buildThirteen(),
                                SizedBox(height: 16.v),
                                Divider(),
                                SizedBox(height: 16.v),
                                _buildFrame2(),
                                SizedBox(height: 16.v),
                                Divider(),
                                SizedBox(height: 32.v),
                                _buildItems1(),
                                SizedBox(height: 16.v),
                                Divider(),
                                SizedBox(height: 16.v),
                                _buildThirteen(),
                                SizedBox(height: 16.v),
                                Divider(),
                                SizedBox(height: 16.v),
                                _buildFrame2(),
                                SizedBox(height: 16.v),
                                Divider(),
                                SizedBox(height: 11.v),
                                _buildCoupon(),
                                SizedBox(height: 223.v),
                                Container(
                                    margin: EdgeInsets.symmetric(horizontal: 108.h),
                                    decoration: AppDecoration.fillBlueGray.copyWith(
                                        borderRadius: BorderRadiusStyle.roundedBorder10),
                                    child: Row(mainAxisSize: MainAxisSize.max, children: [
                                      Container(
                                          height: 44.adaptSize,
                                          width: 44.adaptSize,
                                          padding: EdgeInsets.all(7.h),
                                          decoration: AppDecoration.gradientCyanToIndigoA400
                                              .copyWith(
                                              borderRadius:
                                              BorderRadiusStyle.roundedBorder10),
                                          child: CustomImageView(
                                              imagePath: ImageConstant.imgArrowDown,
                                              height: 28.adaptSize,
                                              width: 28.adaptSize,
                                              alignment: Alignment.center)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 23.h, top: 11.v, bottom: 9.v),
                                          child: Text("lbl_checkout".tr,
                                              style: CustomTextStyles
                                                  .titleSmallWhiteA70001Medium_1))
                                    ])),
                                SizedBox(height: 29.v),
                              ],
                            ),


                          ])))
                ]))));
  }

  Widget _buildFrame2() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              height: 90.v,
              width: 100.h,
              padding: EdgeInsets.symmetric(horizontal: 7.h),
              decoration: AppDecoration.gradientBlueGrayToBluegray70001
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
              child: CustomImageView(
                  imagePath: ImageConstant.imgCobiKrumholzM,
                  height: 83.adaptSize,
                  width: 83.adaptSize,
                  alignment: Alignment.bottomCenter)),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 6.v, bottom: 6.v),
              child: _buildFrame(
                  sMITHTrade: "lbl_smith_trade".tr,
                  price: "lbl_120".tr,
                  one: "lbl_1".tr))
        ]));
  }

  /// Common widget
  Widget _buildFrame({
    required String sMITHTrade,
    required String price,
    required String one,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(sMITHTrade,
          style: CustomTextStyles.titleSmallWhiteA70001
              .copyWith(color: appTheme.whiteA70001.withOpacity(0.87))),
      SizedBox(height: 23.v),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
            padding: EdgeInsets.only(top: 5.v, bottom: 4.v),
            child: Text(price,
                style: theme.textTheme.bodyMedium!
                    .copyWith(color: appTheme.blue40001))),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 2.v),
            decoration: AppDecoration.fillBlueGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgGroup7,
                  height: 24.adaptSize,
                  width: 24.adaptSize),
              Padding(
                  padding: EdgeInsets.only(left: 10.h, top: 2.v),
                  child: Text(one,
                      style: CustomTextStyles.labelLargeSemiBold.copyWith(
                          color: appTheme.whiteA70001.withOpacity(0.6)))),
              Container(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(left: 10.h),
                  decoration: AppDecoration.outline1
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgRemove24Outline,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      alignment: Alignment.center))
            ]))
      ])
    ]);
  }

  /// Section Widget
  Widget _buildItems1() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              height: 90.v,
              width: 100.h,
              padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 14.v),
              decoration: AppDecoration.gradientBlueGrayToBluegray70001
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
              child: CustomImageView(
                  imagePath: ImageConstant.imgRobertByeTg36,
                  height: 59.v,
                  width: 80.h,
                  alignment: Alignment.center)),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 6.v, bottom: 6.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_peugeot_lr013".tr,
                        style: CustomTextStyles.titleSmallWhiteA70001),
                    SizedBox(height: 24.v),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 5.v, bottom: 4.v),
                              child: Text("lbl_1_999_99".tr,
                                  style: theme.textTheme.bodyMedium)),
                          Container(
                              padding: EdgeInsets.all(3.h),
                              decoration: AppDecoration.fillBlueGray.copyWith(
                                  borderRadius:
                                  BorderRadiusStyle.roundedBorder10),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        height: 24.adaptSize,
                                        width: 24.adaptSize,
                                        decoration: AppDecoration
                                            .gradientCyanToIndigoA
                                            .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder5),
                                        child: CustomImageView(
                                            imagePath:
                                            ImageConstant.imgPlus24Outline,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize,
                                            alignment: Alignment.center)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 10.h, top: 2.v),
                                        child: Text("lbl_1".tr,
                                            style: CustomTextStyles
                                                .labelLargeSemiBold)),
                                    Container(
                                        height: 24.adaptSize,
                                        width: 24.adaptSize,
                                        margin: EdgeInsets.only(left: 10.h),
                                        decoration: AppDecoration.outline1
                                            .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder5),
                                        child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgRemove24Outline,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize,
                                            alignment: Alignment.center))
                                  ]))
                        ])
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildThirteen() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              height: 90.v,
              width: 100.h,
              padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 14.v),
              decoration: AppDecoration.gradientBlueGrayToBluegray70001
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
              child: CustomImageView(
                  imagePath: ImageConstant.imgMikkelBechYja,
                  height: 54.v,
                  width: 79.h,
                  alignment: Alignment.topCenter)),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 6.v, bottom: 6.v),
              child: _buildFrame(
                  sMITHTrade: "msg_pilot_chromoly2".tr,
                  price: "lbl_3_999_99".tr,
                  one: "lbl_1".tr))
        ]));
  }



  /// Section Widget
  Widget _buildCoupon() {
    return GestureDetector(
        onTap: () {
         // onTapCoupon();
        },
        child: Container(
            width: 350.h,
            margin: EdgeInsets.symmetric(horizontal: 20.h),
            decoration: AppDecoration.fillBlueGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: OutlineGradientButton(
                padding: EdgeInsets.only(
                    left: 2.h, top: 2.v, right: 2.h, bottom: 2.v),
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
                    width: 114.h,
                    text: "lbl_apply".tr,
                    buttonStyle: CustomButtonStyles.none,
                    decoration: CustomButtonStyles
                        .gradientCyanToIndigoATL101Decoration))));
  }

}
