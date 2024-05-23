import 'package:get/get.dart';
import 'package:payroll_ui_model_gtx/screens/attendence/model/view_hierarchy_item_model.dart';

class AttendenceScreenController extends GetxController {
  Rx<AttendenceScreenModel> attendenceScreenModelObj = AttendenceScreenModel().obs;

  AttendenceScreenController(obs);

  List<Rx<ViewhierarchyItemModel>> get viewhierarchyItemList => attendenceScreenModelObj.value.viewhierarchyItemList;
}

class AttendenceScreenModel {
  RxList<Rx<ViewhierarchyItemModel>> viewhierarchyItemList = <Rx<ViewhierarchyItemModel>>[].obs;
}
