import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payroll_ui_model_gtx/core/data/models/selectionPopupModel/selection_popup_model.dart';
import 'package:payroll_ui_model_gtx/screens/login_with_otp_screen/models/login_with_otp_model.dart';
import 'package:sms_autofill/sms_autofill.dart';

//Controller Cls for the LoginWithOtpScreen

class LoginWithOtpController extends GetxController with CodeAutoFill {
  TextEditingController mobileNumberController = TextEditingController();
  Rx<TextEditingController> otpController = TextEditingController().obs;
  Rx<LoginWithOtpModel> loginwithOtpModelObj = LoginWithOtpModel().obs;
  SelectionPopupModel? selectedDropDownValue;

  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }

  @override
  void onClose() {
    super.onClose();
    mobileNumberController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in loginwithOtpModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    loginwithOtpModelObj.value.dropdownItemList.refresh();
  }
}
