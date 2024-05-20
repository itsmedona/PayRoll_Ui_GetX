import 'package:get/get.dart';
import 'package:payroll_ui_model_gtx/screens/login/controller/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}
