import 'package:get/get.dart';
import 'package:payroll_ui_model_gtx/routes/app_routes.dart';
import 'package:payroll_ui_model_gtx/screens/splash/models/splash_model.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.homeScreen,
      );
    });
  }
}
