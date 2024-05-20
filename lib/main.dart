import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payroll_ui_model_gtx/screens/login/login_screen.dart';
import 'package:payroll_ui_model_gtx/utils/pref_utils.dart';
import 'package:payroll_ui_model_gtx/utils/size_utils.dart';
import 'themes/theme_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PrefUtils.init(); // Initialize preferences
  runApp(const PayrollApp());
}

class PayrollApp extends StatelessWidget {
  const PayrollApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeHelper().themeData(),
      debugShowCheckedModeBanner: false,
      home: Sizer(
        builder: (context, orientation, deviceType) {
          return LoginScreen();
        },
      ),
    );
  }
}
