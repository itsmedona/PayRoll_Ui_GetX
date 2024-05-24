import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:payroll_ui_model_gtx/screens/leave_request/controller/leave_request_controller.dart';
import 'package:payroll_ui_model_gtx/utils/size_utils.dart';
import '../../core/widgets/app_bar/appbar_leading_image.dart';
import '../../core/widgets/app_bar/appbar_subtitle_four.dart';
import '../../core/widgets/app_bar/appbar_subtitle_three.dart';
import '../../core/widgets/app_bar/custom_app_bar.dart';
import '../../core/widgets/custom_button_styles.dart';
import '../../core/widgets/custom_outlined_button.dart';
import '../../core/widgets/custom_text_form_field.dart';
import '../../core/widgets/custom_text_styles.dart';

class LeaveRequestScreen extends GetWidget<LeaveRequestController> {
  const LeaveRequestScreen({Key? key}) : super(key: key);
  @override


  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: buildAppbar(),
      body: Container(
        width: 402.h,
        padding: EdgeInsets.symmetric(
          horizontal: 23.h,
          vertical: 20.v,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Text(
                "lbl_leave_request".tr,
                style: CustomTextStyles.titleMediumPrimary,
              ),
            ),
            SizedBox(height: 15.v),
            buildRowfromselect(),
            SizedBox(height: 15.v),
            buildKeysevenone(),
            SizedBox(height: 22.v),
            buildSubmit(),
            SizedBox(height: 5.v),
          ],
        ),
      ),
    ));
  }

  //Section Widget
  PreferredSizeWidget buildAppbar() {
    return CustomAppBar(
      leadingWidth: 37.h,
      leading: AppbarLeadingImage(),
      title: Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: Row(
          children: [
            AppbarSubtitleFour(text: "lbl_a".tr),
            AppbarSubtitleThree(
              text: "lbl_hello_ajsal_kp".tr,
              margin: EdgeInsets.only(left: 11.h, top: 8.v, bottom: 4.v),
            )
          ],
        ),
      ),
      actions: [],
      styleType: Style.bgFill,
    );
  }

  //Section Widget
  Widget buildFromselectdate() {
    return Expanded(
        child: CustomOutlinedButton(
      height: 45.v,
      text: "msg_from_select_date".tr,
      margin: EdgeInsets.only(left: 9.h),
      buttonStyle: CustomButtonStyles.outlinePrimary,
      buttonTextStyle: CustomTextStyles.bodyMediumBlack900Light,
    ));
  }

  //Section Widget
  Widget buildToselectdate() {
    return Expanded(
        child: CustomOutlinedButton(
      height: 45.v,
      text: "msg_to_select_date".tr,
      margin: EdgeInsets.only(left: 9.h),
      buttonStyle: CustomButtonStyles.outlinePrimary,
      buttonTextStyle: CustomTextStyles.bodyMediumBlack900Light,
    ));
  }

  //Section Widget
  Widget buildRowfromselect() {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [buildFromselectdate(), buildToselectdate()],
      ),
    );
  }

  //Section Widget
  Widget buildKeysevenone() {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: CustomTextFormField(
        controller: controller.keysevenoneController,
        hintText: "lbl_enter_reason".tr,
        textInputAction: TextInputAction.done,
        maxLines: 12,
        contentPadding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 19.v),
        borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayTL10,
      ),
    );
  }

  //Section Widget
  Widget buildSubmit() {
    return CustomOutlinedButton(
        text: "lbl_submit".tr,
        height: 44.v,
        buttonStyle: CustomButtonStyles.outlinePrimary,
        buttonTextStyle: CustomTextStyles.titleSmallOnPrimary15
        );
  }
}
