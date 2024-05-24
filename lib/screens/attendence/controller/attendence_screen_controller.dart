import 'package:get/get.dart';

import '../model/view_hierarchy_item_model.dart';

class AttendenceScreenController extends GetxController {
  // Initialize selectedDatesFromCalender with an empty RxList<DateTime?>
  RxList<DateTime?> selectedDatesFromCalender = <DateTime?>[].obs;
  Rx<AttendenceScreenModel> attendenceScreenModelObj =
      AttendenceScreenModel().obs;

  AttendenceScreenController(Rx<AttendenceScreenModel> obs) {
    attendenceScreenModelObj = AttendenceScreenModel().obs;
  }

  List<Rx<ViewhierarchyItemModel>> get viewhierarchyItemList =>
      attendenceScreenModelObj.value.viewhierarchyItemList;
}

class AttendenceScreenModel {
  RxList<Rx<ViewhierarchyItemModel>> viewhierarchyItemList =
      <Rx<ViewhierarchyItemModel>>[].obs;
}
