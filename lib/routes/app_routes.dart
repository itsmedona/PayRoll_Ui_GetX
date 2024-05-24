import 'package:get/get.dart';
import 'package:payroll_ui_model_gtx/screens/attendence/attendence_screen.dart';
import 'package:payroll_ui_model_gtx/screens/home/bindings/home_screen_binding.dart';
import 'package:payroll_ui_model_gtx/screens/home/home_screen.dart';
import 'package:payroll_ui_model_gtx/screens/leave_request/binding/leave_request_binding.dart';
import 'package:payroll_ui_model_gtx/screens/leave_request/leave_request_screen.dart';
import 'package:payroll_ui_model_gtx/screens/login/binding/login_binding.dart';
import 'package:payroll_ui_model_gtx/screens/login/login_screen.dart';
import 'package:payroll_ui_model_gtx/screens/profile/bindings/profile_bindings.dart';
import 'package:payroll_ui_model_gtx/screens/profile/profile_screen.dart';

import '../screens/attendence/bindings/attendence_screen_binding.dart';

class AppRoutes {
  static const String homeScreen = '/home_screen';
  static const String initialRoute = '/initialRoute';
  static const String attendenceScreen = '/attendence_screen';
  static const String profileScreen = '/profile_screen';
  static const String leaveRequestScreen = '/leave_request_screen';
  static List<GetPage> pages = [
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [HomeScreenBinding()],
    ),
    GetPage(
      name: attendenceScreen,
      page: () => AttendenceScreen(),
      bindings: [AttendenceBinding()],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [ProfileBinding()],
    ),
    GetPage(
      name: leaveRequestScreen,
      page: () => LeaveRequestScreen(),
      bindings: [LeaveRequestBinding()],
    ),
    GetPage(
      name: initialRoute,
      page: () => LoginScreen(),
      bindings: [LoginBinding()],
    ),
  ];
}
