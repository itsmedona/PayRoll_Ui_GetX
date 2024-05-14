import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payroll_ui_model_gtx/core/constants/size.dart';
import 'package:payroll_ui_model_gtx/screens/login/controller/login_controller.dart';
import '../../core/widgets/custom_button_styles.dart';
import '../../core/widgets/custom_elevated_button.dart';
import '../../core/widgets/custom_text_form_field.dart';
import '../../core/widgets/custom_text_styles.dart';
import '../../themes/theme_helper.dart';

// ignore: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  LoginScreen({Key? key}) : super(key: key);

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
            child: SizedBox(
              height: SizeConstants.height,
              child: Form(
                key: formKey,
                child: SizedBox(
                  height: 768.v,
                  width: 402.h,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 28.h,
                            vertical: 62.v,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: Text(
                                  "Hello!",
                                  style: CustomTextStyles.displayMediumBlack,
                                ),
                              ),
                              SizedBox(height: 13.v),
                              Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: Text(
                                  "Welcome Back :)",
                                  style: CustomTextStyles.titleMediumBold,
                                ),
                              ),
                              SizedBox(height: 2.v),
                              Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: Text(
                                  "Please login to your account.",
                                  style: CustomTextStyles.labelLargeGray600,
                                ),
                              ),
                              SizedBox(height: 46.v),
                              buildInputFieldUsername(context),
                              SizedBox(height: 22.v),
                              buildInputFieldPassword(context),
                              SizedBox(height: 16.v),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "Forgot Password?",
                                  style: CustomTextStyles
                                      .titleMediumTealA700SemiBold
                                      .copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                              SizedBox(height: 30.v),
                              CustomElevatedButton(
                                text: "Login",
                                buttonStyle: CustomButtonStyles.fillTealA,
                              ),
                              Spacer(),
                              SizedBox(height: 67.v),
                              Align(
                                alignment: Alignment.center,
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Don't have an account? ",
                                        style: CustomTextStyles
                                            .bodyMediumBluegray500_1
                                            .copyWith(
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "SignUp",
                                        style: CustomTextStyles
                                            .labelLargeBluegray500Bold
                                            .copyWith(
                                          decoration: TextDecoration.underline,
                                     ))   ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
                    ],
          ),
        ),),
      ),
          ),),),
);
  }
}

//Section Widget
Widget buildInputFieldUsername(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Username",
        style: CustomTextStyles.bodyMediumGray50001,
      ),
      SizedBox(height: 6.v),
      CustomTextFormField(
        controller: Get.find<LoginController>().userNameController,
        hintText: "Username",
        hintStyle: CustomTextStyles.bodyLargeTealA700,
        prefix: Container(
          margin: EdgeInsets.fromLTRB(17.h, 13.v, 18.h, 13.v),
          child: Icon(Icons.person),
          height: 21.v,
          width: 18.h,
        ),
        prefixConstraints: BoxConstraints(maxHeight: 48.v),
        contentPadding: EdgeInsets.only(
          top: 14.v,
          right: 30.h,
          bottom: 14.v,
        ),
        borderDecoration: TextFormFieldStyleHelper.outlineTealATL6,
        filled: false,
      ),
    ],
  );
}

Widget buildInputFieldPassword(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Password",
        style: CustomTextStyles.bodyMediumGray50001,
      ),
      SizedBox(height: 6.v),
      Obx( 
        ()=> CustomTextFormField(
          controller: Get.find<LoginController>().passwordController,///////
          hintText: "* * * * * * * * * *",
          hintStyle: CustomTextStyles.bodyLargeTealA700,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(17.h, 15.v, 17.h, 14.v),
            child: Icon(Icons.shield_sharp),
            height: 21.v,
            width: 18.h,
          ),
          prefixConstraints: BoxConstraints(maxHeight: 48.v),
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 14.v, 15.h, 14.v),
            child: Icon(Icons.enhanced_encryption_rounded),
            height: 20.adaptSize,
            width: 20.adaptSize,
          ),
          suffixConstraints: BoxConstraints(maxHeight: 48.v),
          obscureText: true,
          contentPadding: EdgeInsets.symmetric(vertical: 14.v),
          borderDecoration: TextFormFieldStyleHelper.outlineTealATL6,
        ),
      ),
    ],
  );
}

