import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payroll_ui_model_gtx/utils/validation_functions.dart';
import '../../core/widgets/custom_button_styles.dart';
import '../../core/widgets/custom_elevated_button.dart';
import '../../core/widgets/custom_text_form_field.dart';
import '../../core/widgets/custom_text_styles.dart';
import '../../themes/theme_helper.dart';
import '../../utils/size_utils.dart';
import 'controller/signup_details_controller.dart';

// ignore: must_be_immutable
class SignupDetailsScreen extends GetWidget<SignupDetailsController> {
  SignupDetailsScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: formKey,
              child: Container(
                width: 402.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 28.h,
                  vertical: 54.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Text(
                        "lbl_signup".tr,
                        style: theme.textTheme.displayMedium,
                      ),
                    ),
                    SizedBox(height: 45.v),
                    buildFullNameSection(),
                    SizedBox(height: 24.v),
                    buildUserNameSection(),
                    SizedBox(height: 23.v),
                    buildPhoneNumberSection(),
                    SizedBox(height: 40.v),
                    buildPasswordSection(),
                    SizedBox(height: 17.v),
                    buildConfirmPasswordSection(),
                    SizedBox(height: 37.v),
                    CustomElevatedButton(
                      text: "lbl_submit".tr,
                      margin: EdgeInsets.only(left: 1.h),
                      buttonStyle: CustomButtonStyles.fillTealA,
                    ),
                    SizedBox(height: 5.v)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//Section Widget
Widget buildFullNameSection() {
  return Padding(
    padding: EdgeInsets.only(left: 1.h),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_full_name".tr,
          style: CustomTextStyles.bodyMediumGray50001,
        ),
        SizedBox(height: 6.v),
        CustomTextFormField(
          controller: Get.find<SignupDetailsController>().fullNameController,
          hintText: "lbl_name".tr,
          hintStyle: CustomTextStyles.bodyLargeTealA700,
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
          borderDecoration: TextFormFieldStyleHelper.outlineTealATL6,
        )
      ],
    ),
  );
}

Widget buildUserNameSection() {
  return Padding(
    padding: EdgeInsets.only(left: 1.h),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_username".tr,
          style: CustomTextStyles.bodyMediumGray50001,
        ),
        SizedBox(height: 6.v),
        CustomTextFormField(
          controller: Get.find<SignupDetailsController>().userNameController,
          hintText: "lbl_username2".tr,
          hintStyle: CustomTextStyles.bodyLargeTealA700,
           validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
          borderDecoration: TextFormFieldStyleHelper.outlineTealATL6,
        )
      ],
    ),
  );
}

Widget buildPhoneNumberSection() {
  return Padding(
    padding: EdgeInsets.only(left: 1.h),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_phone_number".tr,
          style: CustomTextStyles.bodyMediumGray50001,
        ),
        SizedBox(height: 6.v),
        CustomTextFormField(
          controller: Get.find<SignupDetailsController>().phoneNumberController,
          hintText: "+91 9499996666",
          hintStyle: CustomTextStyles.bodyLargeTealA700,
          borderDecoration: TextFormFieldStyleHelper.outlineTealATL6,
          fillColor: AppTheme.blueGray50,
        )
      ],
    ),
  );
}

Widget buildPasswordSection() {
  return Padding(
    padding: EdgeInsets.only(left: 1.h),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Create Password",
          style: CustomTextStyles.bodyMediumGray50001,
        ),
        SizedBox(height: 6.v),
        CustomTextFormField(
          controller: Get.find<SignupDetailsController>().passwordController,
          hintText: "* * * * * * * * * *",
          hintStyle: CustomTextStyles.bodyLargeTealA700,
          textInputType: TextInputType.visiblePassword,
          obscureText: true,
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 12.v),
            child: Icon(Icons.lock_outline_sharp),
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          suffixConstraints: BoxConstraints(maxHeight: 48.v),
          contentPadding: EdgeInsets.only(
            left: 12.h,
            top: 14.v,
            bottom: 14.v,
          ),
          borderDecoration: TextFormFieldStyleHelper.outlineTealATL6,
        ),
      ],
    ),
  );
}

Widget buildConfirmPasswordSection() {
  return Padding(
    padding: EdgeInsets.only(left: 1.h),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Confirm Password",
          style: CustomTextStyles.bodyMediumGray50001,
        ),
        SizedBox(height: 6.v),
        CustomTextFormField(
          controller:
              Get.find<SignupDetailsController>().confirmpasswordController,
          hintText: "* * * * * * * * * *",
          hintStyle: CustomTextStyles.bodyLargeTealA700,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 12.v),
            child: Icon(Icons.lock_outline_sharp),
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          suffixConstraints: BoxConstraints(maxHeight: 48.v),
          obscureText: true,
          contentPadding: EdgeInsets.only(
            left: 12.h,
            top: 14.v,
            bottom: 14.v,
          ),
          borderDecoration: TextFormFieldStyleHelper.outlineTealATL6,
        )
      ],
    ),
  );
}
