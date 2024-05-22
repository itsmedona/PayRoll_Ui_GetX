import 'package:get/get.dart';
import 'package:payroll_ui_model_gtx/screens/home/bindings/home_screen_binding.dart';
import 'package:payroll_ui_model_gtx/screens/home/home_screen.dart';
import 'package:payroll_ui_model_gtx/screens/login/binding/login_binding.dart';
import 'package:payroll_ui_model_gtx/screens/login/login_screen.dart';

class AppRoutes {
  static const String homeScreen = '/home_screen';
  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [HomeScreenBinding()],
    ),
    GetPage(
      name: initialRoute,
      page: () => LoginScreen(),
      bindings: [LoginBinding()],
    ),
  ];
}
