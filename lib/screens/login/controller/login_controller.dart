import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/login_model.dart';

class LoginController extends GetxController {
  var loginModel = LoginModel().obs;
  var userNameController = TextEditingController();
  var passwordController = TextEditingController();
  var isShowPassword = false.obs;

  @override
  void onClose() {
    userNameController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
