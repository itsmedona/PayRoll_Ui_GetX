import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payroll_ui_model_gtx/core/widgets/custom_text_styles.dart';
import 'package:payroll_ui_model_gtx/screens/attendence/controller/attendence_screen_controller.dart';
import 'package:payroll_ui_model_gtx/screens/attendence/model/view_hierarchy_item_model.dart';
import 'package:payroll_ui_model_gtx/themes/app_decoration.dart';
import 'package:payroll_ui_model_gtx/themes/theme_helper.dart';
import 'package:payroll_ui_model_gtx/utils/size_utils.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  ViewhierarchyItemWidget(this.viewhierarchyItemModelObj, {Key? key})
      : super(key: key);

  final ViewhierarchyItemModel viewhierarchyItemModelObj;

  var controller = Get.find<AttendenceScreenController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      decoration: AppDecoration.fillLightGreen400,
      child: Row(
        children: [
          SizedBox(
            height: 62.v,
            child: VerticalDivider(
              width: 1.h,
              thickness: 1.v,
              color: AppTheme.lightgreenA700,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 13.h, top: 6.v, bottom: 6.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(() => Text(
                  viewhierarchyItemModelObj.presentText!.value,
                  style: CustomTextStyles.bodySmallInterBluegray40012,
                )),
                SizedBox(height: 2.v),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Obx(() => Text(
                    viewhierarchyItemModelObj.eightText!.value,
                    style: CustomTextStyles.headlineSmallBlack900,
                  )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
