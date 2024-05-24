import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payroll_ui_model_gtx/routes/app_routes.dart';
import 'package:payroll_ui_model_gtx/themes/app_decoration.dart';
import 'package:payroll_ui_model_gtx/themes/theme_helper.dart';
import 'package:payroll_ui_model_gtx/utils/size_utils.dart';
import 'controller/app_navigation_controller.dart';

class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: theme.colorScheme.onPrimary,
      body: SizedBox(
        width: 375.h,
        child: Column(
          children: [
            buildAppNavigation(),
            Expanded(
                child: SingleChildScrollView(
              child: Container(
                decoration: AppDecoration.white,
                child: Column(
                  children: [
                    buildScreenTitle(
                        screenTitle: "lbl_home".tr,
                        onTapScreenTitle: () =>
                            onTapScreenTitle(AppRoutes.homeScreen)
                            ),
                    buildScreenTitle(
                        screenTitle: "lbl_attendence".tr,
                        onTapScreenTitle: () =>
                            onTapScreenTitle(AppRoutes.attendenceScreen)
                            ),        
                    buildScreenTitle(
                        screenTitle: "lbl_profile".tr,
                        onTapScreenTitle: () =>
                            onTapScreenTitle(AppRoutes.profileScreen)
                            ),        
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    ));
  }

//Section Widget
  Widget buildAppNavigation() {
    return Container(
      decoration: AppDecoration.white,
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "lbl_app_navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppTheme.black900,
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "msg_check_your_app_s".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppTheme.blueGray40003,
                    fontSize: 16.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: AppTheme.black900,
          ),
        ],
      ),
    );
  }

//Common click event for bottomsheet
  void onTapBottomSheetTitle(
    BuildContext context,
    Widget className,
  ) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return className;
      },
    );
  }

//Common Widget
  Widget buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: AppDecoration.white,
        child: Column(
          children: [
            SizedBox(
              height: 10.v,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppTheme.black900,
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: AppTheme.blueGray40003,
            )
          ],
        ),
      ),
    );
  }

//Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
