import 'package:get/get.dart';

/// This class is used in the [six_item_widget] screen.
class SixItemModel {
  SixItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}