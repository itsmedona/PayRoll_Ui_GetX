import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payroll_ui_model_gtx/screens/leave_request/model/leave_request_model.dart';

class LeaveRequestController extends GetxController {
  TextEditingController keysevenoneController = TextEditingController();
  Rx<LeaveRequestModel> leaveRequestModelObj = LeaveRequestModel().obs;

  @override
  void onClose() {
    super.onClose();
    keysevenoneController.dispose();
  }
}
