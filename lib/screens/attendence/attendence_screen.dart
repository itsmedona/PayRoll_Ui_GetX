import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payroll_ui_model_gtx/screens/attendence/widget/view_hierarchy_item_widget.dart';
import 'package:payroll_ui_model_gtx/utils/size_utils.dart';
import '../../core/widgets/app_bar/appbar_subtitle_four.dart';
import '../../core/widgets/app_bar/appbar_subtitle_three.dart';
import '../../core/widgets/app_bar/custom_app_bar.dart';
import '../../core/widgets/custom_elevated_button.dart';
import '../../core/widgets/custom_text_styles.dart';
import '../../themes/app_decoration.dart';
import '../../themes/theme_helper.dart';
import '../home/home_screen.dart';
import 'controller/attendence_screen_controller.dart';
import 'model/attendence_screen_model.dart';

class AttendenceScreen extends StatelessWidget {
  AttendenceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller =
        Get.put(AttendenceScreenController(AttendenceScreenModel().obs));

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppbar(),
        body: Container(
          width: 402.h,
          padding: EdgeInsets.symmetric(vertical: 18.v),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildRowAttendance(),
              SizedBox(height: 16.v),
              _buildMainContainer(controller),
              SizedBox(height: 19.v),
              CustomElevatedButton(
                text: "lbl_request_leave".tr,
                margin: EdgeInsets.symmetric(horizontal: 17.h),
              ),
            ],
          ),
        ),
        bottomNavigationBar: buildBottomBar(),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: Row(
          children: [
            AppbarSubtitleFour(text: "lbl_a".tr),
            AppbarSubtitleThree(
              text: "lbl_hello_ajsal_kp".tr,
              margin: EdgeInsets.only(left: 11.h, top: 8.v, bottom: 4.v),
            ),
          ],
        ),
      ),
      styleType: Style.bgFill,
    );
  }

  Widget _buildRowAttendance() {
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

  Widget _buildMainContainer(AttendenceScreenController controller) {
    return Expanded(
      child: Container(
        width: 401.h,
        padding: EdgeInsets.symmetric(vertical: 1.v),
        decoration: AppDecoration.white,
        child: Column(
          children: [
            _buildRowPresentText(controller),
            SizedBox(height: 20.v),
            _buildCalendar(controller),
          ],
        ),
      ),
    );
  }

  Widget _buildCalendar(AttendenceScreenController controller) {
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
              fontWeight: FontWeight.w400,
            ),
            disabledDayTextStyle: TextStyle(
              color: AppTheme.blueGray300,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
            weekdayLabels: ["S", "M", "T", "W", "T", "F", "S"],
            dayBorderRadius: BorderRadius.circular(8.h),
          ),
          value: controller.selectedDatesFromCalender.value,
          onValueChanged: (dates) {
            controller.selectedDatesFromCalender.value = dates;
          },
        ),
      ),
    );
  }

  Widget _buildRowPresentText(AttendenceScreenController controller) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(top: 16.v),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(
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
                        .viewhierarchyItemList.value.length,
                    itemBuilder: (context, index) {
                      var model = controller.attendenceScreenModelObj.value
                          .viewhierarchyItemList.value[index];
                      return ViewhierarchyItemWidget(model);
                    },
                  ),
                ),
              ),
              SizedBox(width: 20.h),
            ],
            ),
            )
            );
            }
            }
