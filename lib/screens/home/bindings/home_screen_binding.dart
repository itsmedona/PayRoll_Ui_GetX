import 'package:get/get.dart';
import 'package:payroll_ui_model_gtx/screens/home/controller/home_screen_controller.dart';

class HomeScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeScreenController());
  }
}
