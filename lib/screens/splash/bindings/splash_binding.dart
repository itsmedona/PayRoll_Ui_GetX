import 'package:get/get.dart';
import 'package:payroll_ui_model_gtx/screens/splash/controller/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}
