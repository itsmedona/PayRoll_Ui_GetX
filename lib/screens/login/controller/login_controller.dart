import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/login_model.dart';

class LoginController extends GetxController {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Rx<LoginModel> loginModelObj = LoginModel().obs;
  Rx<bool> isShowPassword = true.obs;
  @override
  void onClose() {
    super.onClose();
    userNameController.dispose();
    passwordController.dispose();
  }
}
