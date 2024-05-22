import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payroll_ui_model_gtx/core/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:payroll_ui_model_gtx/core/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:payroll_ui_model_gtx/core/widgets/custom_elevated_button.dart';
import 'package:payroll_ui_model_gtx/core/widgets/custom_text_styles.dart';
import 'package:payroll_ui_model_gtx/routes/app_routes.dart';
import 'package:payroll_ui_model_gtx/screens/attendence/attendence_screen.dart';
import 'package:payroll_ui_model_gtx/screens/settings/settings_screen.dart';
import 'package:payroll_ui_model_gtx/themes/app_decoration.dart';
import 'package:payroll_ui_model_gtx/utils/size_utils.dart';
import '../../core/widgets/app_bar/custom_app_bar.dart';
import '../../core/widgets/custom_bottom_bar.dart';
import '../../themes/theme_helper.dart';
import 'controller/home_screen_controller.dart';

class HomeScreen extends GetWidget<HomeScreenController> {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: buildAppBar(),
      body: Container(
        width: 402.h,
        padding: EdgeInsets.all(14.h),
        child: Column(
          children: [
            buildAttendenceStack(),
            SizedBox(height: 20.v),
            CustomElevatedButton(
              text: "msg_punch_your_attendence".tr,
              margin: EdgeInsets.symmetric(horizontal: 3.h),
            ),
            SizedBox(height: 22.v),
            buildTodayColumn()
          ],
        ),
      ),
      //bottomNavigationBar: buildBottomBar(),
    ));
  }

  //Section Widget
  PreferredSizeWidget buildAppBar() {
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
              margin: EdgeInsets.only(
                left: 11.h,
                top: 8.v,
                bottom: 4.v,
              ),
            )
          ],
        ),
      ),
//actions:[],
      styleType: Style.bgFill,
    );
  }

  //Section Widget
  Widget buildAttendenceStack() {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: theme.colorScheme.onPrimary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.circleBorder20,
      ),
      child: Container(
        height: 213.v,
        width: 373.h,
        padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 2.v),
        decoration: AppDecoration.white.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder20,
        ),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Positioned(
              top: 19.v,
              left: 22.h,
              child: Text(
                "lbl_attendence".tr,
                style: CustomTextStyles.titleMediumGray900SemiBold,
              ),
            ),
            Positioned(
              bottom: 29.v,
              right: 55.h,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 35.v, bottom: 37.v),
                      child: Column(
                        children: [
                          Text(
                            "lbl_21".tr,
                            style: CustomTextStyles.titleMediumGray900,
                          ),
                          SizedBox(height: 1.v),
                          SizedBox(
                            width: 34.h,
                            child: Text(
                              "lbl_days_this_month".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodySmallInterBluegray800
                                  .copyWith(
                                height: 1.30,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 116.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        _buildAttendanceRow(
                          AppTheme.tealA700,
                          "lbl_55".tr,
                          CustomTextStyles.titleMediumBluegray800,
                          "lbl_present2".tr,
                        ),
                        SizedBox(height: 11.v),
                        _buildAttendanceRow(
                          AppTheme.tealA700,
                          "lbl_22".tr,
                          CustomTextStyles.titleMediumBluegray800,
                          "lbl_absent".tr,
                        ),
                        SizedBox(height: 11.v),
                        _buildAttendanceRow(
                          theme.colorScheme.onPrimaryContainer.withOpacity(1),
                          "lbl_23".tr,
                          CustomTextStyles.titleMediumBluegray800,
                          "lbl_half_day".tr,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAttendanceRow(
      Color dotColor, String text, TextStyle textStyle, String? labelText) {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 7.adaptSize,
            width: 7.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 6.v),
            decoration: BoxDecoration(
              color: dotColor,
              borderRadius: BorderRadius.circular(3.h),
            ),
          ),
          SizedBox(width: 7.h),
          Text(
            text,
            style: textStyle,
          ),
          if (labelText != null) ...[
            SizedBox(width: 7.h),
            Text(
              labelText,
              style: CustomTextStyles.labelSmallBluegray800,
            ),
          ],
        ],
      ),
    );
  }

  //Section Widget
  Widget buildTodayColumn() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 23.v),
      decoration: AppDecoration.white
          .copyWith(borderRadius: BorderRadiusStyle.circleBorder20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Text(
                "lbl_today".tr,
                style: CustomTextStyles.titleMediumGray900SemiBold,
              ),
            ),
          ),
          SizedBox(
            height: 28.v,
          ),
          Padding(
            padding: EdgeInsets.only(left: 35.h, right: 21.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "lbl_date".tr,
                  style: CustomTextStyles.titleSmallBlack900SemiBold,
                ),
                Spacer(
                  flex: 54,
                ),
                Text(
                  "lbl_in_time".tr,
                  style: CustomTextStyles.titleSmallBlack900SemiBold,
                )
              ],
            ),
          ),
          SizedBox(
            height: 8.v,
          ),
          Divider(
            color: AppTheme.blueGray200,
          ),
          SizedBox(
            height: 11.v,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.h, right: 26.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "lbl_20_feb_2022".tr,
                  style: CustomTextStyles.labelLargeBluegray500,
                ),
                Spacer(
                  flex: 42,
                ),
                Text(
                  "lbl_9_00_am".tr,
                  style: CustomTextStyles.labelLargeBluegray500,
                ),
                Spacer(
                  flex: 57,
                ),
                Text(
                  "lbl_5_00_pm".tr,
                  style: CustomTextStyles.labelLargeBluegray500,
                )
              ],
            ),
          ),
          SizedBox(height: 33.v),
          SizedBox(
            height: 107.adaptSize,
            width: 107.adaptSize,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 107.adaptSize,
                    width: 107.adaptSize,
                    child: CircularProgressIndicator(
                      value: 0.5,
                      backgroundColor: AppTheme.gray40007f,
                      color: AppTheme.amber300,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 55.h,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: "lbl_03h_25m_15s".tr,
                              style: CustomTextStyles.labelSmallBlack900),
                          TextSpan(
                              text: "lbl_of_8hours".tr,
                              style: CustomTextStyles.labelSmallBlack900),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 9.v)
        ],
      ),
    );
  }
}

//Section Widget
Widget buildBottomBar() {
  return CustomBottomBar(
    onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    },
  );
}

//Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) {
  switch (type) {
    case BottomBarEnum.Home:
      return AppRoutes.homeScreen;
    case BottomBarEnum.Attendence:
      return AppRoutes.attendenceScreen;
    case BottomBarEnum.Settings:
      return AppRoutes.settingsScreen;
    default:
      return "/";
  }
}

//Handling page based on route
Widget getCurrentPage(String currentRoute) {
  switch (currentRoute) {
    case AppRoutes.homeScreen:
      return HomeScreen();
    case AppRoutes.attendenceScreen:
      return AttendenceScreen();
    case AppRoutes.settingsScreen:
      return SettingsScreen();
    default:
      DefaultWidget();
      throw ();
  }
}
