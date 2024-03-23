import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:my_bike_shop/routes/app_routes.dart';
import 'package:my_bike_shop/theme/theme_helper.dart';
import 'package:my_bike_shop/utils/size_utils.dart';

import 'localization/app_localization.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType)
    {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My Bike Shop',
        theme: theme,
        translations: AppLocalization(),
        locale: Get.deviceLocale, //for setting localization strings
        fallbackLocale: Locale('en', 'US'),
        //home: ShowRoutesScreen(),
        getPages: AppRoutes.appRoutes(),
      );
    }
    );
  }
}

