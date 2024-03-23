import 'package:get/get.dart';
import 'package:my_bike_shop/controllers/description_controller.dart';
import 'package:my_bike_shop/utils/size_utils.dart';

import '../models/six_item_model.dart';

import 'package:flutter/material.dart';


import '../utils/image_constant.dart';
import 'custom_image_view.dart';

// ignore: must_be_immutable
class SixItemWidget extends StatelessWidget {
  SixItemWidget(
    this.sixItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SixItemModel sixItemModelObj;

  var controller = Get.find<DescriptionController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: SizedBox(
        height: 222.v,
        width: 287.h,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRobertByeTg36,
              height: 208.v,
              width: 284.h,
              alignment: Alignment.topCenter,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgGroup6,
              height: 10.v,
              width: 282.h,
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(bottom: 29.v),
            ),
          ],
        ),
      ),
    );
  }
}
