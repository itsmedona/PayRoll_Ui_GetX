import 'package:get/get.dart';
import '../controller/login_with_otp_controller.dart';

class LoginWithOtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginWithOtpController());
  }
}