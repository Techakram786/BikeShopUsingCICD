import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_bike_shop/utils/size_utils.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

import '../routes/app_routes_name.dart';
import '../theme/app_decoration.dart';
import '../theme/custom_button_style.dart';
import '../theme/custom_text_style.dart';
import '../theme/theme_helper.dart';
import '../utils/image_constant.dart';
import '../widgets/app_bar/appbar_title.dart';
import '../widgets/app_bar/appbar_trailing_iconbutton.dart';
import '../widgets/app_bar/custom_app_bar.dart';
import '../widgets/custom_bottom_bar.dart';
import '../widgets/custom_icon_button.dart';
import '../widgets/custom_image_view.dart';
import '../widgets/custom_outlined_button.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Expanded(
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: 1761.v,
                    width: double.maxFinite,
                    child: Stack(

                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle474,
                          height: 695.v,
                          width: 390.h,
                          alignment: Alignment.topCenter,
                          margin: EdgeInsets.only(top: 21.v),
                        ),
                        ListView(
                          children: [
                            _buildOffer(),
                            _buildCategories(),
                            Container(
                              height: 238,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: ListView.builder(
                                        itemCount: 10,
                                        itemBuilder: (BuildContext context,int index){
                                          if(index.isEven){
                                            return  GestureDetector(
                                              onTap: () {
                                                // Add your onTap logic here
                                                Get.toNamed(RoutesName.detailsScreen);
                                              },
                                              child: Align(
                                                alignment: Alignment.bottomRight,
                                                child: Padding(
                                                  //padding: EdgeInsets.fromLTRB(0.h, 30.v, 10.h, 10.v),
                                                  padding: EdgeInsets.only(right: 5.h,left: 10.v),
                                                  /*padding: EdgeInsets.only(
                                                                left: 185.h,
                                                                bottom: 25.v,
                                                              ),*/
                                                  child:_buildRoadHelmet(
                                                    roadHelmet: "lbl_road_helmet".tr,
                                                    sMITHTrade: "lbl_smith_trade".tr,
                                                    price: "lbl_120".tr,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                         else{
                                            return  GestureDetector(
                                              onTap: () {
                                                // Add your onTap logic here
                                                Get.toNamed(RoutesName.detailsScreen);
                                              },
                                              child: Align(
                                                alignment: Alignment.bottomRight,
                                                child: Padding(
                                                  //padding: EdgeInsets.fromLTRB(0.h, 30.v, 10.h, 10.v),
                                                  padding: EdgeInsets.only(right: 5.h,left: 10.v),
                                                  /*padding: EdgeInsets.only(
                                                                left: 185.h,
                                                                bottom: 25.v,
                                                              ),*/
                                                  child: _buildItems3(
                                                    roadBike: "lbl_road_bike".tr,
                                                    pEUGEOTLROne: "lbl_peugeot_lr012".tr,
                                                    price: "lbl_1_999_99".tr,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                        }),
                                  ),
                                  Expanded(
                                    child: ListView.builder(
                                        itemCount: 10,
                                        itemBuilder: (BuildContext context,int index){
                                          if(index.isEven){
                                            return  GestureDetector(
                                              onTap: () {
                                                // Add your onTap logic here
                                               Get.toNamed(RoutesName.detailsScreen);
                                              },
                                              child: Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Padding(
                                                  //padding: EdgeInsets.fromLTRB(0.h, 30.v, 10.h, 10.v),
                                                  padding: EdgeInsets.only(right: 5.h,left: 10.v),
                                                  /*padding: EdgeInsets.only(
                                                                        left: 185.h,
                                                                        bottom: 25.v,
                                                                  ),*/
                                                  child: _evenItem(
                                                    roadHelmet: "lbl_road_helmet".tr,
                                                    sMITHTrade: "lbl_smith_trade".tr,
                                                    price: "lbl_120".tr,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          else{
                                            return  GestureDetector(
                                              onTap: () {
                                                // Add your onTap logic here
                                                Get.toNamed(RoutesName.detailsScreen);
                                              },
                                              child: Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Padding(
                                                  //padding: EdgeInsets.fromLTRB(0.h, 30.v, 10.h, 10.v),
                                                  padding: EdgeInsets.only(right: 5.h,left: 10.v),
                                                  /*padding: EdgeInsets.only(
                                                                        left: 185.h,
                                                                        bottom: 25.v,
                                                                  ),*/
                                                  child: _oddItem(
                                                    mountainBike: "lbl_mountain_bike".tr,
                                                    pILOTChromoly:
                                                    "msg_pilot_chromoly".tr,
                                                    price: "lbl_1_999_99".tr,
                                                  ),
                                                ),
                                              ),
                                            );


                                          }

                                        }),
                                  ),

                                ],
                              ),
                            ),

                          ],
                        )

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: AppbarTitle(
        text: "msg_choose_your_bike".tr,
        margin: EdgeInsets.only(left: 20.h),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgSearch,
          margin: EdgeInsets.only(
            left: 20.h,
            top: 16.v,
            right: 20.h,
          ),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildCategories() {
    return Padding(
      padding: EdgeInsets.fromLTRB(10.h, 16.v, 10.h, 5.v),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                top: 40.v,
                right: 10.h,
              ),
              child: OutlineGradientButton(
                padding: EdgeInsets.only(
                  left: 1.h,
                  top: 1.v,
                  right: 1.h,
                  bottom: 1.v,
                ),
                strokeWidth: 1.h,
                gradient: LinearGradient(
                  begin: const Alignment(0, 0),
                  end: const Alignment(1, 1),
                  colors: [
                    appTheme.whiteA70001.withOpacity(0.6),
                    appTheme.black900.withOpacity(0.6),
                  ],
                ),
                corners: const Corners(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                child: CustomOutlinedButton(
                  height: 50.v,
                  text: "lbl_all".tr,
                  buttonStyle: CustomButtonStyles.none,
                  decoration:
                  CustomButtonStyles.gradientCyanToIndigoATL10Decoration,
                  buttonTextStyle: CustomTextStyles.labelLargeWhiteA70001,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(10.h, 30.v, 10.h, 10.v),
              child: OutlineGradientButton(
                padding: EdgeInsets.only(
                  left: 1.h,
                  top: 1.v,
                  right: 1.h,
                  bottom: 1.v,
                ),
                strokeWidth: 1.h,
                gradient: LinearGradient(
                  begin: const Alignment(0.11, 0.03),
                  end: const Alignment(0.82, 0.27),
                  colors: [
                    appTheme.whiteA70001.withOpacity(0.2),
                    appTheme.black900.withOpacity(0.2),
                  ],
                ),
                corners: const Corners(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                child: CustomIconButton(
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  padding: EdgeInsets.all(11.h),
                  decoration: IconButtonStyleHelper.gradientBlueGrayToGray,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgClose,
                  ),
                ),
              ),/*
              child: Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  bottom: 40.v,
                ),

              ),*/
            ),
          ),
          /* Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(10.h, 30.v, 10.h, 10.v),
              child: Padding(
                padding: EdgeInsets.fromLTRB(10.h, 30.v, 10.h, 10.v),
                child: OutlineGradientButton(
                  padding: EdgeInsets.only(
                    left: 1.h,
                    top: 1.v,
                    right: 1.h,
                    bottom: 1.v,
                  ),
                  strokeWidth: 1.h,
                  gradient: LinearGradient(
                    begin: Alignment(0.11, 0.04),
                    end: Alignment(0.9, 0.4),
                    colors: [
                      appTheme.whiteA70001.withOpacity(0.2),
                      appTheme.black900.withOpacity(0.2),
                      appTheme.black900.withOpacity(0.2),
                    ],
                  ),
                  corners: Corners(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  child: CustomIconButton(
                    height: 50.adaptSize,
                    width: 50.adaptSize,
                    padding: EdgeInsets.all(11.h),
                    decoration:
                        IconButtonStyleHelper.gradientBlueGrayToBlueGray,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgClose,
                      height: 50.adaptSize,
                      width: 50.adaptSize,
                      radius: BorderRadius.circular(
                        10.h,
                      ),
                      margin: EdgeInsets.symmetric(
                        horizontal: 10.h,
                        vertical: 20.v,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),*/
          Expanded(
            child: CustomImageView(
              imagePath: ImageConstant.imgRoad,
              height: 50.adaptSize,
              width: 50.adaptSize,
              radius: BorderRadius.circular(
                10.h,
              ),
              margin: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 20.v,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(10.h, 10.v, 10.h, 20.v),
              child: OutlineGradientButton(
                padding: EdgeInsets.only(
                  left: 1.h,
                  top: 1.v,
                  right: 1.h,
                  bottom: 1.v,
                ),
                strokeWidth: 1.h,
                gradient: LinearGradient(
                  begin: const Alignment(0.11, 0.03),
                  end: const Alignment(0.82, 0.27),
                  colors: [
                    appTheme.whiteA70001.withOpacity(0.2),
                    appTheme.black900.withOpacity(0.2),
                  ],
                ),
                corners: const Corners(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                child: CustomIconButton(
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  padding: EdgeInsets.all(11.h),
                  decoration: IconButtonStyleHelper.gradientBlueGrayToGray,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgCloseWhiteA70001,
                  ),
                ),
              ),
              /*child: Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  bottom: 40.v,
                ),

              ),*/
            ),
          ),
          /*Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(10.h, 10.v, 10.h, 30.v),
              child: Padding(
                padding: EdgeInsets.fromLTRB(10.h, 10.v, 10.h, 30.v),
                child: OutlineGradientButton(
                  padding: EdgeInsets.only(
                    left: 1.h,
                    top: 1.v,
                    right: 1.h,
                    bottom: 1.v,
                  ),
                  strokeWidth: 1.h,
                  gradient: LinearGradient(
                    begin: Alignment(0.11, 0.03),
                    end: Alignment(0.82, 0.27),
                    colors: [
                      appTheme.whiteA70001.withOpacity(0.2),
                      appTheme.black900.withOpacity(0.2),
                    ],
                  ),
                  corners: Corners(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  child: CustomIconButton(
                    height: 50.adaptSize,
                    width: 50.adaptSize,
                    padding: EdgeInsets.all(10.h),
                    decoration: IconButtonStyleHelper.gradientBlueGrayToGray,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgCloseWhiteA70001,
                    ),
                  ),
                ),
              ),
            ),
          ),*/
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 10.h,
                bottom: 40.v,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  bottom: 40.v,
                ),
                child: OutlineGradientButton(
                  padding: EdgeInsets.only(
                    left: 1.h,
                    top: 1.v,
                    right: 1.h,
                    bottom: 1.v,
                  ),
                  strokeWidth: 1.h,
                  gradient: LinearGradient(
                    begin: Alignment(0.11, 0.03),
                    end: Alignment(0.82, 0.27),
                    colors: [
                      appTheme.whiteA70001.withOpacity(0.2),
                      appTheme.black900.withOpacity(0.2),
                    ],
                  ),
                  corners: Corners(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  child: CustomIconButton(
                    height: 50.adaptSize,
                    width: 50.adaptSize,
                    padding: EdgeInsets.all(11.h),
                    decoration: IconButtonStyleHelper.gradientBlueGrayToGray,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgUser,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOffer() {
    return Align(
      alignment: Alignment.topCenter,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Container(
          height: 240.v,
          width: 350.h,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 24.v,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadiusStyle.roundedBorder20,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgItems7,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgElectric20bicycleI05,
                height: 153.v,
                width: 316.h,
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 5.v),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "lbl_30_off".tr,
                  style: theme.textTheme.headlineMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        print(type);
        Get.toNamed(getCurrentRoute(type));
      },
    );
  }

  /// Common widget
  Widget _evenItem({
    required String roadHelmet,
    required String sMITHTrade,
    required String price,
  }) {
    return Container(
      width: 165.h,
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 21.v,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder20,
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgItems7,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 104.v,
              width: 134.h,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgHeart24Outline,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.topRight,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgCobiKrumholzM,
                    height: 104.v,
                    width: 123.h,
                    alignment: Alignment.centerLeft,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 9.v),
          Text(
            roadHelmet,
            style: theme.textTheme.labelLarge!.copyWith(
              color: appTheme.whiteA70001.withOpacity(0.6),
            ),
          ),
          Text(
            sMITHTrade,
            style: theme.textTheme.titleSmall!.copyWith(
              color: appTheme.whiteA70001,
            ),
          ),
          Text(
            price,
            style: theme.textTheme.labelLarge!.copyWith(
              color: appTheme.whiteA70001.withOpacity(0.6),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _oddItem({
    required String mountainBike,
    required String pILOTChromoly,
    required String price,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 16.v,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder20,
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgItems8,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgHeart24Outline,
            height: 24.adaptSize,
            width: 24.adaptSize,
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(right: 6.h),
          ),
          SizedBox(height: 12.v),
          SizedBox(
            height: 82.v,
            width: 144.h,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgShadow,
                  height: 5.v,
                  width: 144.h,
                  alignment: Alignment.bottomCenter,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgMikkelBechYja,
                  height: 78.v,
                  width: 116.h,
                  alignment: Alignment.topCenter,
                ),
              ],
            ),
          ),
          SizedBox(height: 23.v),
          Text(
            mountainBike,
            style: theme.textTheme.labelLarge!.copyWith(
              color: appTheme.whiteA70001.withOpacity(0.6),
            ),
          ),
          Text(
            pILOTChromoly,
            style: theme.textTheme.titleSmall!.copyWith(
              color: appTheme.whiteA70001,
            ),
          ),
          SizedBox(height: 18.v),
          Text(
            price,
            style: theme.textTheme.labelLarge!.copyWith(
              color: appTheme.whiteA70001.withOpacity(0.6),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildItems3({
    required String roadBike,
    required String pEUGEOTLROne,
    required String price,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 22.v,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder20,
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgItems8,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 104.v,
            width: 127.h,
            margin: EdgeInsets.only(left: 6.h),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgShadow,
                  height: 5.v,
                  width: 114.h,
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.only(bottom: 5.v),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgHeart24Outline24x24,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.topRight,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRobertByeTg36,
                  height: 88.v,
                  width: 121.h,
                  alignment: Alignment.bottomLeft,
                ),
              ],
            ),
          ),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              roadBike,
              style: theme.textTheme.labelLarge!.copyWith(
                color: appTheme.whiteA70001.withOpacity(0.6),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              pEUGEOTLROne,
              style: theme.textTheme.titleSmall!.copyWith(
                color: appTheme.whiteA70001,
              ),
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              price,
              style: theme.textTheme.labelLarge!.copyWith(
                color: appTheme.whiteA70001.withOpacity(0.6),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRoadHelmet({
    required String roadHelmet,
    required String sMITHTrade,
    required String price,
  }) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Container(
        height: 233.v,
        width: 165.h,
        padding: EdgeInsets.symmetric(
          horizontal: 10.h,
          vertical: 16.v,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadiusStyle.roundedBorder20,
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgItems8,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  right: 41.h,
                  bottom: 3.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      roadHelmet,
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: appTheme.whiteA70001.withOpacity(0.6),
                      ),
                    ),
                    Text(
                      sMITHTrade,
                      style: theme.textTheme.titleSmall!.copyWith(
                        color: appTheme.whiteA70001,
                      ),
                    ),
                    Text(
                      price,
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: appTheme.whiteA70001.withOpacity(0.6),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgHeart24Outline24x24,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(right: 6.h),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgCobiKrumholzM,
              height: 124.v,
              width: 117.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(
                left: 11.h,
                top: 12.v,
              ),
            ),
          ],
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Cart:
        return RoutesName.shoppingCartScreen;
      /*case BottomBarEnum.Selectedbutton:
        //return AppRoutes.onepage;
      case BottomBarEnum.Mail:
        return "/";

      case BottomBarEnum.Lock:
        return "/";
      case BottomBarEnum.Doctextfill:
        return "/";*/
      default:
        return RoutesName.shoppingCartScreen;
    }
  }

  ///Handling page based on route
  /*Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.onePage:
        return OnePage();
      default:
        return DefaultWidget();
    }
  }*/
}
