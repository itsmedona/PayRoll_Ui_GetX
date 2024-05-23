import 'package:get/get.dart';

class ViewhierarchyItemModel {
  ViewhierarchyItemModel({this.presentText, this.eightText, this.id}) {
    presentText = presentText ?? Rx("Present");
    eightText = eightText ?? Rx("8");
    id = id ?? Rx("");
  }
  Rx<String>? presentText;
  Rx<String>? eightText;
  Rx<String>? id;
}
