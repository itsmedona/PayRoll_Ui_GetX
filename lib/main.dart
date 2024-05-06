import 'package:flutter/material.dart';
import 'package:payroll_ui_model_gtx/screens/login/login.dart';
import 'package:payroll_ui_model_gtx/themes/apptheme.dart';

void main() {
  runApp(const PayrollApp());
}

class PayrollApp extends StatelessWidget {
  const PayrollApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
