import 'package:get/get.dart';

import '../routes/app_routes.dart';
import '../routes/app_routes_name.dart';

class SplashController extends GetxController{
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), ()
    {
      Get.toNamed(RoutesName.homeScreen);
    }
    );
  }
}