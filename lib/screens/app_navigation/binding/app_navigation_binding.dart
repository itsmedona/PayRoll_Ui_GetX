import 'package:get/get.dart';
import 'package:payroll_ui_model_gtx/screens/app_navigation/controller/app_navigation_controller.dart';

class AppNavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppNavigationController());
  }
}
