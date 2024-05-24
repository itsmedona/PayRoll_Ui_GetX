import 'package:get/get.dart';
import '../controller/attendence_screen_controller.dart';

class AttendenceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AttendenceScreenController);
    
  }
}
