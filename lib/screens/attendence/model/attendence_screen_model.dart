import 'package:get/state_manager.dart';
import 'view_hierarchy_item_model.dart';

class AttendenceScreenModel {
  Rx<List<ViewhierarchyItemModel>> viewhierarchyItemList = 
  Rx([
    ViewhierarchyItemModel(presentText:"Present".obs, eightText: "8".obs),
    ViewhierarchyItemModel(presentText:"Absent".obs,eightText:"3".obs),
    ViewhierarchyItemModel(presentText:"Paid Leave".obs,eightText:"8".obs),
    ViewhierarchyItemModel(presentText:"Unpaid Leave".obs,eightText:"3".obs),
  ]);
}
