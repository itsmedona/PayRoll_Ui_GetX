import 'package:get/get.dart';
import 'package:payroll_ui_model_gtx/utils/pref_utils.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());
  }
}
