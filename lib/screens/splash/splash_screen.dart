import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payroll_ui_model_gtx/core/widgets/custom_text_styles.dart';
import 'package:payroll_ui_model_gtx/screens/splash/controller/splash_controller.dart';
import 'package:payroll_ui_model_gtx/themes/theme_helper.dart';
import 'package:payroll_ui_model_gtx/utils/size_utils.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary,
        body: Container(
          width: 402.h,
          padding: EdgeInsets.symmetric(
            vertical: 77.v
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(
                flex: 47,
              ),
              SizedBox(height: 7.v),
              Text("lbl_logo".tr,
              style: CustomTextStyles.titleSmallBold,
              ),
              Spacer(
                flex: 52,
              ),
              SizedBox(
                width: 116.h,
                child: RichText(text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_powered_by".tr,
                      style: CustomTextStyles.bodySmallInterBlack900,
                    ),
                    TextSpan(
                      text: "lbl_company_name".tr,
                      style: CustomTextStyles.titleSmallTealA700
                    )
                  ]
                ),
                textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),

    ));
  }
}
