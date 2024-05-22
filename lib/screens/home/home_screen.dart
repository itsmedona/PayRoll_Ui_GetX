import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payroll_ui_model_gtx/core/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:payroll_ui_model_gtx/core/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:payroll_ui_model_gtx/core/widgets/custom_elevated_button.dart';
import 'package:payroll_ui_model_gtx/core/widgets/custom_text_styles.dart';
import 'package:payroll_ui_model_gtx/routes/app_routes.dart';
import 'package:payroll_ui_model_gtx/screens/login/login_screen.dart';
import 'package:payroll_ui_model_gtx/screens/login_with_otp_screen/login_with_otp.dart';
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
          borderRadius: BorderRadiusStyle.circleBorder20),
      child: Container(
        height: 213.v,
        width: 373.h,
        padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 2.v),
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder20),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 22.h, top: 19.v),
                child: Text(
                  "lbl_attendence".tr,
                  style: CustomTextStyles.titleMediumGray900SemiBold,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(right: 55.h, bottom: 29.v),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
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
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 116.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 1.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 7.adaptSize,
                                  width: 7.adaptSize,
                                  margin: EdgeInsets.symmetric(vertical: 6.v),
                                  decoration: BoxDecoration(
                                      color: AppTheme.tealA700,
                                      borderRadius: BorderRadius.circular(3.h)),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 7.h),
                                  child: Text(
                                    "lbl_55".tr,
                                    style:
                                        CustomTextStyles.titleMediumBluegray800,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 1.h),
                            child: Text(
                              "lbl_present2".tr,
                              style: CustomTextStyles.labelSmallBluegray800,
                            ),
                          ),
                          SizedBox(height: 11.v),
                          Padding(
                            padding: EdgeInsets.only(right: 1.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 7.adaptSize,
                                  width: 7.adaptSize,
                                  margin: EdgeInsets.symmetric(vertical: 6.v),
                                  decoration: BoxDecoration(
                                    color: theme.colorScheme.onPrimaryContainer
                                        .withOpacity(1),
                                    borderRadius: BorderRadius.circular(3.h),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 5.h),
                                  child: Text(
                                    "lbl_absent".tr,
                                    style:
                                        CustomTextStyles.labelSmallBluegray800,
                                  ),
                                ),
                                SizedBox(
                                  height: 12.v,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 1.h),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 7.adaptSize,
                                        width: 7.adaptSize,
                                        margin:
                                            EdgeInsets.symmetric(vertical: 6.v),
                                        decoration: BoxDecoration(
                                          color: theme
                                              .colorScheme.onPrimaryContainer
                                              .withOpacity(1),
                                          borderRadius:
                                              BorderRadius.circular(3.h),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 7.h),
                                        child: Text(
                                          "lbl_23".tr,
                                          style: CustomTextStyles
                                              .titleMediumBluegray800,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Text(
                                  "lbl_half_day".tr,
                                  style: CustomTextStyles.labelSmallBluegray800,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
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
      return AppRoutes.homeScreen;
    case BottomBarEnum.Settings:
      return AppRoutes.initialRoute;
    default:
      return "/";
  }
}

//Handling page based on route
Widget getCurrentPage(String currentRoute) {
  switch (currentRoute) {
    case AppRoutes.homeScreen:
      return HomeScreen();
    case AppRoutes.initialRoute:
      return LoginScreen();
    case AppRoutes.loginWithOtpScreen:
      return LoginWithOtpScreen();
    default:
      DefaultWidget();
      throw ();
  }
}
