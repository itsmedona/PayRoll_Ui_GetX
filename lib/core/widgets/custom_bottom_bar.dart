import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payroll_ui_model_gtx/core/widgets/custom_text_styles.dart';
import 'package:payroll_ui_model_gtx/themes/theme_helper.dart';
import 'package:payroll_ui_model_gtx/utils/size_utils.dart';

enum BottomBarEnum { Home, Attendence, Profile }

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({Key? key, this.onChanged}) : super(key: key);

  final RxInt selectedIndex = 0.obs;

  final List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: Icons.home,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: Icons.fingerprint,
      title: "lbl_attendence".tr,
      type: BottomBarEnum.Attendence,
    ),
    BottomMenuModel(
      icon: Icons.settings,
      title: "lbl_profile".tr,
      type: BottomBarEnum.Profile,
    ),
  ];

  final Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 376.h,
          child: Divider(color: AppTheme.gray20003),
        ),
        SizedBox(
          height: 77.v,
          child: Obx(() => BottomNavigationBar(
                backgroundColor: Colors.transparent,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                selectedFontSize: 0,
                elevation: 0,
                currentIndex: selectedIndex.value,
                type: BottomNavigationBarType.fixed,
                items: List.generate(bottomMenuList.length, (index) {
                  final item = bottomMenuList[index];
                  return BottomNavigationBarItem(
                    icon: Container(
                      width: 135.h,
                      height: 76.v,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.fromLTRB(34.h, 47.v, 34.h, 12.v),
                            child: Text(
                              item.title ?? "",
                              style:
                                  CustomTextStyles.bodyMediumPrimary.copyWith(
                                color: theme.colorScheme.primary,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 18.v,
                            child: Icon(
                              item.icon,
                              size: 26.adaptSize,
                              color: theme.colorScheme.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    activeIcon: Container(
                      width: 135.h,
                      height: 76.v,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.fromLTRB(34.h, 47.v, 34.h, 12.v),
                            child: Text(
                              item.title ?? "",
                              style:
                                  CustomTextStyles.bodyMediumPrimary.copyWith(
                                color: theme.colorScheme.primary,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 18.v,
                            child: Icon(
                              item.icon,
                              size: 26.adaptSize,
                              color: theme.colorScheme.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    label: '',
                  );
                }),
                onTap: (index) {
                  selectedIndex.value = index;
                  onChanged?.call(bottomMenuList[index].type);
                },
              )),
        ),
      ],
    );
  }
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    this.title,
    required this.type,
  });

  final IconData icon;
  final String? title;
  final BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  const DefaultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Replace the respective widget here",
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
