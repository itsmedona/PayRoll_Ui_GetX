import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payroll_ui_model_gtx/utils/size_utils.dart';
import '../../themes/theme_helper.dart';
import 'controller/attendence_controller.dart';

class AttendenceScreen extends GetWidget<AttendenceController> {
  const AttendenceScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: theme.colorScheme.onPrimary,
      body: SizedBox(
        height: 768.v,
        width: 402.h,
        child: Text("Attendence Screen"),
      ),
    ));
  }
}
