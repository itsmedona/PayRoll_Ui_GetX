import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payroll_ui_model_gtx/screens/signup/models/signup_details_model.dart';

class SignupDetailsController extends GetxController {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
  Rx<SignupDetaisModel> signupDetailsModelObj = SignupDetaisModel().obs;
  Rx<bool> isShowPassword = true.obs;
  Rx<bool> isShowPassword1 = true.obs;

  @override
  void onClose() {
    super.onClose();
    fullNameController.dispose();
    userNameController.dispose();
    phoneNumberController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
  }
}
