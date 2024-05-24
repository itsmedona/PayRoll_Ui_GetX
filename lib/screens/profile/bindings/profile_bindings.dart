import 'package:get/get.dart';
import 'package:payroll_ui_model_gtx/screens/profile/controller/profile_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileController());
  }
}
