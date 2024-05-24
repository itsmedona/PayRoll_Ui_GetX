import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payroll_ui_model_gtx/screens/attendence/widget/view_hierarchy_item_widget.dart';
import 'package:payroll_ui_model_gtx/screens/home/home_screen.dart';
import 'package:payroll_ui_model_gtx/utils/size_utils.dart';
import '../../core/widgets/app_bar/appbar_subtitle_four.dart';
import '../../core/widgets/app_bar/appbar_subtitle_three.dart';
import '../../core/widgets/app_bar/custom_app_bar.dart';
import '../../core/widgets/custom_elevated_button.dart';
import '../../core/widgets/custom_text_styles.dart';
import '../../themes/app_decoration.dart';
import '../../themes/theme_helper.dart';
import 'controller/attendence_screen_controller.dart';
import 'model/view_hierarchy_item_model.dart';

// ignore: must_be_immutable
class AttendenceScreen extends StatelessWidget {
  AttendenceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AttendenceScreenController controller =
        Get.put(AttendenceScreenController(AttendenceScreenModel().obs));

    return SafeArea(
      child: Scaffold(
        appBar: buildAppbar(),
        body: Container(
          width: 402.h,
          padding: EdgeInsets.symmetric(vertical: 18.v),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildRowattendence(),
              SizedBox(height: 16.v),
              Container(
                height: 491.v,
                width: 401.h,
                padding: EdgeInsets.symmetric(vertical: 1.v),
                decoration: AppDecoration.white,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: EdgeInsets.only(left: 10.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 6.h, vertical: 22.v),
                        decoration: AppDecoration.outlineBlack9001.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 12.v,
                            ),
                            buildCalender(controller)
                          ],
                        ),
                      ),
                    ),
                    buildRowpresenttext(
                        controller, MediaQuery.of(context).size.width)
                  ],
                ),
              ),
              SizedBox(height: 19.v),
              CustomElevatedButton(
                text: "lbl_request_leave".tr,
                margin: EdgeInsets.symmetric(horizontal: 17.h),
              )
            ],
          ),
        ),
        bottomNavigationBar: buildBottomBar(),
      ),
    );
  }
}

//Section Widget
PreferredSizeWidget buildAppbar() {
  return CustomAppBar(
    title: Padding(
      padding: EdgeInsets.only(left: 20.h),
      child: Row(
        children: [
          AppbarSubtitleFour(
            text: "lbl_a".tr,
          ),
          AppbarSubtitleThree(
            text: "lbl_hello_ajsal_kp".tr,
            margin: EdgeInsets.only(left: 11.h, top: 8.v, bottom: 4.v),
          )
        ],
      ),
    ),
    styleType: Style.bgFill,
  );
}

//Section Widget
Widget buildRowattendence() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 18.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(
            "lbl_attendence".tr,
            style: CustomTextStyles.titleMedium17,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 2.v),
          decoration: AppDecoration.outlineGreenA.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 14.h, top: 4.v, bottom: 3.v),
          child: Text(
            "lbl_show_report".tr,
            style: CustomTextStyles.bodySmallInterGreen600,
          ),
        ),
      ],
    ),
  );
}

//Section Widget
Widget buildCalender(AttendenceScreenController controller) {
  return Obx(
    () => SizedBox(
      height: 290.v,
      width: 377.h,
      child: CalendarDatePicker2(
        config: CalendarDatePicker2Config(
          calendarType: CalendarDatePicker2Type.multi,
          firstDate: DateTime(DateTime.now().year - 5),
          lastDate: DateTime(DateTime.now().year + 5),
          selectedDayHighlightColor: Color(0XFFD90000),
          firstDayOfWeek: 0,
          weekdayLabelTextStyle: TextStyle(
            color: AppTheme.gray800,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
          ),
          todayTextStyle: TextStyle(
            color: AppTheme.black900,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
          selectedDayTextStyle: TextStyle(
            color: Color(0XFFFFFFFF),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
          dayTextStyle: TextStyle(
              color: theme.colorScheme.secondaryContainer,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400),
          disabledDayTextStyle: TextStyle(
              color: AppTheme.blueGray300,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400),
          weekdayLabels: ["S", "M", "T", "W", "T", "F", "S"],
          dayBorderRadius: BorderRadius.circular(8.h),
        ),
        // ignore: invalid_use_of_protected_member
        value: controller.selectedDatesFromCalender.value,
        onValueChanged: (dates) {
          controller.selectedDatesFromCalender.value = dates;
        },
      ),
    ),
  );
}

Widget buildRowpresenttext(
    AttendenceScreenController controller, double width) {
  return Align(
    alignment: Alignment.topCenter,
    child: Padding(
      padding: EdgeInsets.only(top: 16.v),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            // Apply Expanded to ensure the GridView fits within available space
            child: SizedBox(
              width: width * 0.6, // Limiting width to 60% of available space
              child: Obx(
                () => GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 63.v,
                    crossAxisCount: 2,
                    mainAxisSpacing: 14.h,
                    crossAxisSpacing: 14.h,
                  ),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: controller.attendenceScreenModelObj.value
                      .viewhierarchyItemList.length,
                  itemBuilder: (context, index) {
                    ViewhierarchyItemModel model = controller
                        .attendenceScreenModelObj
                        .value
                        .viewhierarchyItemList[index] as ViewhierarchyItemModel;
                    return ViewhierarchyItemWidget(
                      model,
                    );
                  },
                ),
              ),
            ),
          ),
          SizedBox(
              width: 20
                  .h), // Adding some space between the GridView and other content
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 1.h),
                decoration: AppDecoration.fillAmber300,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      height: 62.v,
                      child: VerticalDivider(
                        width: 1.h,
                        thickness: 1.v,
                        color: AppTheme.amber300,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 13.h, top: 8.v, bottom: 6.v),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_half_days".tr,
                            style: CustomTextStyles.bodySmallInterBluegray40012,
                          ),
                          SizedBox(height: 1.v),
                          Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Text(
                              "lbl_1".tr,
                              style: CustomTextStyles.headlineSmallBlack900,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 9.v),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 1.h),
                decoration: AppDecoration.fillDeepPurple,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 62.v,
                      child: VerticalDivider(
                        width: 1.h,
                        thickness: 1.v,
                        color: AppTheme.deepPurple900,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(12.h, 9.v, 7.h, 6.v),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_remaining_leave".tr,
                            style: CustomTextStyles.bodySmallInterBuegray400,
                          ),
                          SizedBox(height: 1.v),
                          Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Text(
                              "lbl_1".tr,
                              style: CustomTextStyles.headlineSmallBlack900,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}
