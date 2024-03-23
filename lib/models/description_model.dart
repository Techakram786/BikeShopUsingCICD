import 'package:get/get.dart';
import 'package:my_bike_shop/models/six_item_model.dart';

class DescriptionModel {
  Rx<List<SixItemModel>> sixItemList =
  Rx(List.generate(1, (index) => SixItemModel()));
}