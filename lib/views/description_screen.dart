import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_bike_shop/controllers/description_controller.dart';
import 'package:my_bike_shop/routes/app_routes_name.dart';
import 'package:my_bike_shop/utils/size_utils.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

import '../models/six_item_model.dart';
import '../theme/app_decoration.dart';
import '../theme/custom_button_style.dart';
import '../theme/custom_text_style.dart';
import '../theme/theme_helper.dart';
import '../utils/image_constant.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_icon_button.dart';
import '../widgets/custom_image_view.dart';
import '../widgets/custom_outlined_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../widgets/six_item_widget.dart';
class DescriptionScreen extends GetWidget<DescriptionController> {
  const DescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: 800.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                          height: 800.v,
                          width: 349.h,
                          padding: EdgeInsets.only(
                              left: 10.h, top: 87.v, right: 10.h),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                  AssetImage(ImageConstant.imgRectangle476),
                                  fit: BoxFit.cover)),
                          child: Stack(alignment: Alignment.topLeft, children: [
                            _buildSix(),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Obx(() => Container(
                                    height: 5.v,
                                    margin: EdgeInsets.only(
                                        left: 130.h, top: 216.v),
                                    child: AnimatedSmoothIndicator(
                                        activeIndex:
                                        controller.sliderIndex.value,
                                        count: controller.sevenModelObj.value
                                            .sixItemList.value.length,
                                        axisDirection: Axis.horizontal,
                                        effect: ScrollingDotsEffect(
                                            spacing: 7.17,
                                            activeDotColor:
                                            appTheme.whiteA70001,
                                            dotColor: appTheme.whiteA70001
                                                .withOpacity(0.2),
                                            dotHeight: 5.v,
                                            dotWidth: 5.h)))))
                          ]))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: OutlineGradientButton(
                          padding: EdgeInsets.only(
                              left: 2.h, top: 2.v, right: 2.h, bottom: 2.v),
                          strokeWidth: 2.h,
                          gradient: LinearGradient(
                              begin: Alignment(0.52, 0),
                              end: Alignment(0.52, 0.14),
                              colors: [
                                appTheme.whiteA70001.withOpacity(0.2),
                                appTheme.black900.withOpacity(0.2)
                              ]),
                          corners: Corners(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30)),
                          child: Container(
                              decoration: AppDecoration
                                  .gradientBlueGrayToBlueGray
                                  .copyWith(
                                  borderRadius:
                                  BorderRadiusStyle.roundedBorder30),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 32.v),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 44.h, right: 41.h),
                                            child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  CustomElevatedButton(
                                                      width: 133.h,
                                                      text:
                                                      "lbl_description".tr,
                                                      buttonStyle:
                                                      CustomButtonStyles
                                                          .outlineBlueGray,
                                                      buttonTextStyle:
                                                      CustomTextStyles
                                                          .titleSmallBlue40002),
                                                  CustomElevatedButton(
                                                      width: 142.h,
                                                      text: "lbl_specification"
                                                          .tr,
                                                      margin: EdgeInsets.only(
                                                          left: 30.h))
                                                ]))),
                                    SizedBox(height: 28.v),
                                    Padding(
                                        padding: EdgeInsets.only(left: 20.h),
                                        child: Text("lbl_peugeot_lr01".tr,
                                            style:
                                            theme.textTheme.titleMedium)),
                                    SizedBox(height: 9.v),
                                    Container(
                                        width: 332.h,
                                        margin: EdgeInsets.only(
                                            left: 20.h, right: 37.h),
                                        child: Text("msg_the_lr01_uses_the".tr,
                                            maxLines: 8,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodyMediumWhiteA7000115)),
                                    SizedBox(height: 21.v),
                                    _buildFrame()
                                  ])))),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 20.h, top: 16.v),
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
                                    padding: EdgeInsets.all(8.h),
                                    onTap: () {
                                      onTapBtnArrowDown();
                                    },
                                    child: CustomImageView(
                                        imagePath:
                                        ImageConstant.imgArrowDown))),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 56.h, top: 6.v, bottom: 7.v),
                                child: Text("lbl_peugeot_lr01".tr,
                                    style: CustomTextStyles
                                        .titleLargePoppinsWhiteA70001Bold))
                          ])))
                ]))));
  }

  /// Section Widget
  Widget _buildSix() {
    return Obx(() => CarouselSlider.builder(
        options: CarouselOptions(
            height: 222.v,
            initialPage: 0,
            autoPlay: true,
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              controller.sliderIndex.value = index;
            }),
        itemCount: controller.sevenModelObj.value.sixItemList.value.length,
        itemBuilder: (context, index, realIndex) {
          SixItemModel model =
          controller.sevenModelObj.value.sixItemList.value[index];
          return SixItemWidget(model);
        }));
  }

  /// Section Widget
  Widget _buildFrame() {
    return Container(
        width: double.maxFinite,
        decoration: AppDecoration.outline
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder50),
        child: OutlineGradientButton(
            padding:
            EdgeInsets.only(left: 2.h, top: 2.v, right: 2.h, bottom: 2.v),
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
                padding: EdgeInsets.symmetric(horizontal: 33.h, vertical: 28.v),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(top: 4.v, bottom: 3.v),
                          child: Text("lbl_1_999_99".tr,
                              style: theme.textTheme.headlineSmall)),
                      OutlineGradientButton(
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
                              width: 160.h,
                              text: "lbl_add_to_cart".tr,
                              buttonStyle: CustomButtonStyles.none,
                              decoration: CustomButtonStyles
                                  .gradientCyanToIndigoADecoration,
                              buttonTextStyle:
                              CustomTextStyles.titleSmallMedium,
                              onPressed: () {
                                onTapAddToCart();
                              }))
                    ]))));
  }

  /// Navigates to the eightScreen when the action is triggered.
  onTapAddToCart() {
    Get.toNamed(
      RoutesName.detailsScreen,
    );
  }

  /// Navigates to the sixScreen when the action is triggered.
  onTapBtnArrowDown() {
    Get.toNamed(
      RoutesName.detailsScreen,
    );
  }
}
