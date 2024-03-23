import 'package:get/get.dart';

import '../models/description_model.dart';

class DescriptionController extends GetxController{
  Rx<DescriptionModel> sevenModelObj = DescriptionModel().obs;

  Rx<int> sliderIndex = 0.obs;
}