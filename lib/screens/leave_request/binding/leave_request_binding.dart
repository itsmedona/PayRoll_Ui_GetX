import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:payroll_ui_model_gtx/screens/leave_request/controller/leave_request_controller.dart';

class LeaveRequestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LeaveRequestController());
  }
}
