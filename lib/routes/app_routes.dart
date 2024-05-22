import 'package:get/get.dart';
import 'package:payroll_ui_model_gtx/screens/home/bindings/home_screen_binding.dart';
import 'package:payroll_ui_model_gtx/screens/home/home_screen.dart';
import 'package:payroll_ui_model_gtx/screens/login/binding/login_binding.dart';
import 'package:payroll_ui_model_gtx/screens/login/login_screen.dart';
import 'package:payroll_ui_model_gtx/screens/login_with_otp_screen/bindings/login_with_otp_binding.dart';
import 'package:payroll_ui_model_gtx/screens/login_with_otp_screen/login_with_otp.dart';

class AppRoutes {
  static const String homeScreen = '/home_screen';
  static const String initialRoute = '/initialRoute';
  static const String loginScreen='/login_screen';
  static const String loginWithOtpScreen='/login_with_otp_screen';

  static List<GetPage> pages = [
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [HomeScreenBinding()],
    ),
    GetPage(name: loginWithOtpScreen, 
    page:()=> LoginWithOtpScreen(),
    bindings: [LoginWithOtpBinding()],
    ),
    GetPage(name:loginScreen,
    page:()=>LoginScreen(),
    bindings: [LoginBinding()],
     ),
    GetPage(
      name: initialRoute,
      page: () => LoginScreen(),
      bindings: [LoginBinding()],
    ),
  ];
}
