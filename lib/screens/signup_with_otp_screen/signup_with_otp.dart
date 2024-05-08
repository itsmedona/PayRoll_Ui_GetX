import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payroll_ui_model_gtx/core/constants/size.dart';
import 'package:payroll_ui_model_gtx/core/widgets/custom_button_styles.dart';
import 'package:payroll_ui_model_gtx/core/widgets/custom_elevated_button.dart';
import 'package:payroll_ui_model_gtx/core/widgets/custom_text_form_field.dart';
import 'package:payroll_ui_model_gtx/core/widgets/custom_text_styles.dart';
import 'package:payroll_ui_model_gtx/screens/signup_with_otp_screen/controller/signup_with_otp_controller.dart';
import 'package:payroll_ui_model_gtx/themes/apptheme.dart';
import '../../core/widgets/custom_drop_down.dart';
import '../../core/widgets/custom_pincode.dart';

// ignore: must_be_immutable
class SignupWithOtpScreen extends StatelessWidget {
  SignupWithOtpScreen({Key? key}) : super(key: key);
  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  TextEditingController mobileNumberController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: theme.colorScheme.onPrimary,
      resizeToAvoidBottomInset: false,
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: SizedBox(
            height: SizeConstants.height,
            child: Form(
                key: formKey,
                child: Container(
                  width: 402.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 31.h, vertical: 149.v),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildRowlabel(context),
                      SizedBox(height: 27.v),
                      CustomElevatedButton(
                        text: "Request OTP",
                        buttonStyle: CustomButtonStyles.fillTealA,
                      ),
                      Spacer(),
                      buildColumnlabeltwo(),
                      SizedBox(height: 47.v),
                      CustomElevatedButton(
                          text: "Signup",
                          buttonStyle: CustomButtonStyles.fillTealA),
                      SizedBox(height: 40.v)
                    ],
                  ),
                )),
          ),
        ),
      ),
    ));
  }
}

//Section Widget
Widget buildRowlabel(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: EdgeInsets.only(top: 1.v),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "India",
              style: CustomTextStyles.bodyMediumBluegray500,
            ),
            SizedBox(height: 6.v),
               CustomDropDown(
              width: 77.h,
              icon: Container(
                margin: EdgeInsets.symmetric(horizontal: 12.h),
                child: Icon(
                  Icons.arrow_downward,
                ),
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
              hintText: "+91",
              items:controller.SignupWithOtpModelObj.value.dropdownItemList!.value,///error occured
              contentPadding: EdgeInsets.fromLTRB(12.h, 14.v, 12.h, 12.v),
              autofocus: false,
              suffix: null,
            ),
          ],
        ),
      ),
      Expanded(
          child: Padding(
        padding: EdgeInsets.only(left: 9.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Mobile Number",
              style: CustomTextStyles.bodyLargeBluegray500,
            ),
            SizedBox(height: 6.v),
            CustomTextFormField(
              controller:
                  Get.find<SignupWithOtpController>().mobileNumberController,
              hintText: "9899996666",
              hintStyle: CustomTextStyles.bodyLargeBluegray500,
              textInputType: TextInputType.phone,
              borderDecoration: TextFormFieldStyleHelper.outlineTealATL6,
            )
          ],
        ),
      ))
    ],
  );
}

///
Widget buildColumnlabeltwo() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Text(
          "Enter OTP",
          style: CustomTextStyles.bodyMediumBluegray500,
        ),
      ),
      SizedBox(height: 10.v),
      Obx(
        () => CustomPinCodeTextField(
          context: Get.context!,
          controller: Get.find<SignupWithOtpController>().otpController,
          onChanged: (value) {},
        ),
      ),
    ],
  );
}
