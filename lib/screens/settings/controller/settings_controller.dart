import 'package:get/get.dart';
import 'package:payroll_ui_model_gtx/screens/settings/model/settings_model.dart';

class SettingsController extends GetxController {
  Rx<SettingsModel> settingsModelObj = SettingsModel().obs;
}
