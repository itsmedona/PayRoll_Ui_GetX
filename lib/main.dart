import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payroll_ui_model_gtx/screens/login/login_screen.dart';
import 'package:payroll_ui_model_gtx/themes/theme_helper.dart';

void main() {
  runApp(PayrollApp());
}

class PayrollApp extends StatelessWidget {
  const PayrollApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
