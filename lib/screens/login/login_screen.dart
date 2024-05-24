import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payroll_ui_model_gtx/utils/validation_functions.dart';
import '../../core/widgets/custom_button_styles.dart';
import '../../core/widgets/custom_elevated_button.dart';
import '../../core/widgets/custom_text_form_field.dart';
import '../../core/widgets/custom_text_styles.dart';
import '../../themes/theme_helper.dart';
import '../../utils/size_utils.dart';
import 'controller/login_controller.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final LoginController controller = Get.put(LoginController());

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
            child: SizedBox(
              height: SizeUtils.height,
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
                                  "lbl_hello".tr,
                                  style: CustomTextStyles.displayMediumBlack,
                                ),
                              ),
                              SizedBox(height: 13.v),
                              Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: Text(
                                  "lbl_welcome_back".tr,
                                  style: CustomTextStyles.titleMediumBold,
                                ),
                              ),
                              SizedBox(height: 2.v),
                              Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: Text(
                                  "msg_please_login_to".tr,
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
                                  "msg_forgot_password".tr,
                                  style: CustomTextStyles
                                      .titleMediumTealA700SemiBold
                                      .copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                              SizedBox(height: 30.v),
                              CustomElevatedButton(
                                text: "lbl_login".tr,
                                buttonStyle: CustomButtonStyles.fillTealA,
                                onPressed: () {
                                  if (formKey.currentState?.validate() ?? false) {
                                
                                  }
                                },
                              ),
                              Spacer(),
                              SizedBox(height: 67.v),
                              Align(
                                alignment: Alignment.center,
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "msg_dont_have_account2".tr,
                                        style: CustomTextStyles
                                            .bodyMediumBluegray500_1
                                            .copyWith(
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "lbl_signup".tr,
                                        style: CustomTextStyles
                                            .labelLargeBluegray500Bold
                                            .copyWith(
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildInputFieldUsername(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_username".tr,
          style: CustomTextStyles.bodyMediumGray50001,
        ),
        SizedBox(height: 6.v),
        CustomTextFormField(
          controller: controller.userNameController,
          hintText: "lbl_username".tr,
          hintStyle: CustomTextStyles.bodyLargeTealA700,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(17.h, 13.v, 18.h, 13.v),
            child: Icon(Icons.person),
            height: 21.v,
            width: 18.h,
          ),
          prefixConstraints: BoxConstraints(maxHeight: 48.v),
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
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
          "lbl_password".tr,
          style: CustomTextStyles.bodyMediumGray50001,
        ),
        SizedBox(height: 6.v),
        Obx(
          () => CustomTextFormField(
            controller: controller.passwordController,
            hintText: "msg".tr,
            hintStyle: CustomTextStyles.bodyLargeTealA700,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(17.h, 15.v, 17.h, 14.v),
              child: Icon(Icons.shield_moon_outlined),
              height: 21.v,
              width: 18.h,
            ),
            prefixConstraints: BoxConstraints(maxHeight: 48.v),
            suffix: InkWell(
              onTap: () {
                controller.isShowPassword.value =
                    !controller.isShowPassword.value;
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(30.h, 14.v, 15.h, 14.v),
                child: Icon(Icons.enhanced_encryption_outlined),
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
            ),
            suffixConstraints: BoxConstraints(maxHeight: 48.v),
            validator: (value) {
              if (value == null || (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: controller.isShowPassword.value,
            contentPadding: EdgeInsets.symmetric(vertical: 14.v),
            borderDecoration: TextFormFieldStyleHelper.outlineTealATL6,
          ),
        )
      ],
    );
  }
}
