import 'package:get/get.dart';
import 'package:payroll_ui_model_gtx/screens/settings/controller/settings_controller.dart';

class SettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingsController());
  }
}
