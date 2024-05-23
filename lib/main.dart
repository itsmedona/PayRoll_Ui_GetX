import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payroll_ui_model_gtx/localization/app_localization.dart';
import 'package:payroll_ui_model_gtx/routes/app_routes.dart';
//import 'package:payroll_ui_model_gtx/screens/home/home_screen.dart';
import 'package:payroll_ui_model_gtx/screens/login/controller/login_controller.dart';
//import 'package:payroll_ui_model_gtx/screens/login/login_screen.dart';
import 'package:payroll_ui_model_gtx/utils/pref_utils.dart';
import 'package:payroll_ui_model_gtx/utils/size_utils.dart';
import 'themes/theme_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PrefUtils.init(); // Initialize preferences
  Get.put(LoginController());
  runApp(const PayrollApp());
}

class PayrollApp extends StatelessWidget {
  const PayrollApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        theme: theme,
        translations: AppLocalization(),
        locale: Get.deviceLocale,
        fallbackLocale: Locale('en', 'US'),
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.attendenceScreen,
        getPages: AppRoutes.pages,
      );
    });
  }
}
