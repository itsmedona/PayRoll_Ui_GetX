import 'package:get/get.dart';

import '../model/attendence_screen_model.dart';

class AttendenceScreenController extends GetxController {
  // Initialize selectedDatesFromCalender with an empty RxList<DateTime?>
  AttendenceScreenController(this.attendenceScreenModelObj);
  Rx<AttendenceScreenModel> attendenceScreenModelObj;
  Rx<List<DateTime?>> selectedDatesFromCalender = Rx([]);
}
