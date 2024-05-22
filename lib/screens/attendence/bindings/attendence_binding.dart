import 'package:get/get.dart';

import '../controller/attendence_controller.dart';

class AttendeneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AttendenceController());
  }
}
