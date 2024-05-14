import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payroll_ui_model_gtx/core/constants/size.dart';
import 'package:payroll_ui_model_gtx/core/widgets/custom_button_styles.dart';
import 'package:payroll_ui_model_gtx/core/widgets/custom_elevated_button.dart';
import 'package:payroll_ui_model_gtx/core/widgets/custom_text_form_field.dart';
import 'package:payroll_ui_model_gtx/core/widgets/custom_text_styles.dart';
import 'package:payroll_ui_model_gtx/screens/signup/controller/signup_details_controller.dart';
import 'package:payroll_ui_model_gtx/themes/theme_helper.dart';

// ignore: must_be_immutable
class SignupDetailsScreen extends StatelessWidget {
  SignupDetailsScreen({Key? key}) : super(key: key);

  TextEditingController fullNameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeConstants.width,
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
                        "SignUp",
                        style: theme.textTheme.displayMedium,
                      ),
                    ),
                    SizedBox(height: 45.v),
                    buildFullNameSection(context),
                    SizedBox(height: 24.v),
                    buildUserNameSection(context),
                    SizedBox(height: 23.v),
                    buildPhoneNumberSection(context),
                    SizedBox(height: 40.v),
                    buildPasswordSection(context),
                    SizedBox(height: 17.v),
                    buildConfirmPasswordSection(context),
                    SizedBox(height: 37.v),
                    CustomElevatedButton(
                      text: "Submit",
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
Widget buildFullNameSection(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(left: 1.h),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Full Name",
          style: CustomTextStyles.bodyMediumGray50001,
        ),
        SizedBox(height: 6.v),
        CustomTextFormField(
          controller: Get.find<SignupDetailsController>().fullNameController,
          hintText: "name",
          hintStyle: CustomTextStyles.bodyLargeTealA700,
          borderDecoration: TextFormFieldStyleHelper.outlineTealATL6,
        )
      ],
    ),
  );
}

Widget buildUserNameSection(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(left: 1.h),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Username",
          style: CustomTextStyles.bodyMediumGray50001,
        ),
        SizedBox(height: 6.v),
        CustomTextFormField(
          controller:Get.find<SignupDetailsController>(). userNameController,
          hintText: "username",
          hintStyle: CustomTextStyles.bodyLargeTealA700,
          borderDecoration: TextFormFieldStyleHelper.outlineTealATL6,
        )
      ],
    ),
  );
}

Widget buildPhoneNumberSection(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(left: 1.h),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Phone Number",
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

Widget buildPasswordSection(BuildContext context) {
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

Widget buildConfirmPasswordSection(BuildContext context) {
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
          controller: Get.find<SignupDetailsController>().confirmpasswordController,
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
