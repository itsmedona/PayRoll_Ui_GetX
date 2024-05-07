import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payroll_ui_model_gtx/core/data/models/selectionPopupModel/selection_popup_model.dart';
import 'package:payroll_ui_model_gtx/screens/signup_with_otp_screen/models/signup_with_otp_model.dart';
import 'package:sms_autofill/sms_autofill.dart';

class SignupWithOtpController extends GetxController with CodeAutoFill {
  TextEditingController mobileNumberController = TextEditingController();
  Rx<TextEditingController> otpController = TextEditingController().obs;
  Rx<SignupWithOtpModel> signupWithOtpModelObj = SignupWithOtpModel().obs;
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
    for (var element in signupWithOtpModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    signupWithOtpModelObj.value.dropdownItemList.refresh();
  }
}
