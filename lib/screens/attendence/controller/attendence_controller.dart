import 'package:get/get.dart';
import 'package:payroll_ui_model_gtx/screens/attendence/model/attendence_model.dart';

class AttendenceController extends GetxController {
  Rx<AttendenceModel> attendenceModelObj = AttendenceModel().obs;
}
