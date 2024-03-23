import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:my_bike_shop/utils/size_utils.dart';
import 'package:my_bike_shop/views/splash_controller.dart';

import '../utils/image_constant.dart';
import '../widgets/custom_image_view.dart';
class SplashScreen extends StatelessWidget {
   SplashScreen({super.key});
  final splash_controller=Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 364.h,
          child: Column(
            children: [
              SizedBox(height: 53.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 47.v),
                    padding: EdgeInsets.symmetric(horizontal: 23.h),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgElectric20bicycleI05,
                          height: 153.v,
                          width: 316.h,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgRobertByeTg36,
                          height: 208.v,
                          width: 284.h,
                        ),
                        SizedBox(height: 26.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgMikkelBechYja,
                          height: 198.v,
                          width: 291.h,
                        ),
                        SizedBox(height: 27.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgCobiKrumholzM,
                          height: 286.v,
                          width: 272.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
