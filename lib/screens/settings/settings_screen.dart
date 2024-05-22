import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:payroll_ui_model_gtx/utils/size_utils.dart';
import '../../themes/theme_helper.dart';
import 'controller/settings_controller.dart';

class SettingsScreen extends GetWidget<SettingsController> {
  const SettingsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: theme.colorScheme.onPrimary,
      body: SizedBox(
        height: 768.v,
        width: 402.h,
        child: Text("Settings Screen"),
      ),
    ));
  }
}