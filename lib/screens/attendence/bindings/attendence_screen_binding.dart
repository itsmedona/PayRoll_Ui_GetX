import 'package:get/get.dart';
import '../controller/attendence_screen_controller.dart';

class AttendenceScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AttendenceScreenController());
  }
}
