import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payroll_ui_model_gtx/core/widgets/app_bar/appbar_subtitle.dart';
import 'package:payroll_ui_model_gtx/core/widgets/app_bar/custom_app_bar.dart';
import 'package:payroll_ui_model_gtx/core/widgets/custom_text_styles.dart';

import 'package:payroll_ui_model_gtx/themes/app_decoration.dart';
import 'package:payroll_ui_model_gtx/utils/size_utils.dart';
import '../../themes/theme_helper.dart';
import 'controller/profile_controller.dart';

// ignore: must_be_immutable
class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  ProfileController controller = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary,
        appBar: buildAppBar(),
        body: Container(
          width: 402.h,
          padding: EdgeInsets.symmetric(horizontal: 36.h, vertical: 43.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 135.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 22.h, vertical: 18.v),
                  decoration: AppDecoration.fillIndigo
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder30),
                  child: Text(
                    "lbl_a".tr,
                    style: CustomTextStyles.bodyLargeOnPrimary,
                  ),
                ),
              ),
              SizedBox(height: 7.v),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "lbl_rizwan_ahamed".tr,
                  style: CustomTextStyles.titleSmallGray600SemiBold,
                ),
              ),
              SizedBox(
                height: 2.v,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "msg_riswanahamed_gmail_com".tr,
                  style: CustomTextStyles.labelMediumGray600,
                ),
              ),
              SizedBox(height: 58.v),
              Text(
                "lbl_employee_id".tr,
                style: CustomTextStyles.labelMediumBluegray5009e,
              ),
              SizedBox(height: 5.v),
              Text(
                "msg_jbasdfghjkl1".tr,
                style: CustomTextStyles.labelLargeGray60013,
              ),
              SizedBox(height: 30.v),
              Text(
                "lbl_department3".tr,
                style: CustomTextStyles.labelMediumBluegray5009e,
              ),
              SizedBox(
                height: 2.v,
              ),
              Text(
                "lbl_flutter".tr,
                style: CustomTextStyles.labelLargeGray60013,
              ),
              SizedBox(
                height: 30.v,
              ),
              Text(
                "lbl_band".tr,
                style: CustomTextStyles.labelMediumBluegray5009e,
              ),
              SizedBox(height: 3.v),
              Text(
                "lbl_junior".tr,
                style: CustomTextStyles.labelLargeGray60013,
              ),
              SizedBox(height: 29.v),
              Text(
                "lbl_address".tr,
                style: CustomTextStyles.labelMediumBluegray5009e,
              ),
              SizedBox(
                height: 6.v,
              ),
              Container(
                width: 318.h,
                margin: EdgeInsets.only(right: 11.h),
                child: Text(
                  "msg_simply_dummy_text".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.labelLargeGray60013
                      .copyWith(height: 1.54),
                ),
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }
}

//Section Widget
PreferredSizeWidget buildAppBar() {
  return CustomAppBar(
    title: AppbarSubtitle(
      text: "lbl_profile".tr,
      margin: EdgeInsets.only(left: 23.h),
    ),
  );
}
