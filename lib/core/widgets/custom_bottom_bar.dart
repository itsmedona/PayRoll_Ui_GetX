import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payroll_ui_model_gtx/core/widgets/custom_text_styles.dart';
import 'package:payroll_ui_model_gtx/themes/app_decoration.dart';
import 'package:payroll_ui_model_gtx/themes/theme_helper.dart';
import 'package:payroll_ui_model_gtx/utils/size_utils.dart';

enum BottomBarEnum { Home, Attendence, Settings }

// ignore: must_be_immutable
class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({Key? key, this.onChanged}) : super(key: key);

  RxInt selectedIndex = 0.obs;

  final List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: Icons.home,
      activeIcon: Icons.home,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: Icons.fingerprint,
      activeIcon: Icons.fingerprint,
      title: "lbl_attendence".tr,
      type: BottomBarEnum.Attendence,
    ),
    BottomMenuModel(
      icon: Icons.settings,
      activeIcon: Icons.settings,
      title: "lbl_settings".tr,
      type: BottomBarEnum.Settings,
    ),
  ];

  final Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Divider(color: AppTheme.gray20003),
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
                  final menuItem = bottomMenuList[index];
                  return BottomNavigationBarItem(
                    icon: _buildMenuItem(menuItem, context, false),
                    activeIcon: _buildMenuItem(menuItem, context, true),
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

  Widget _buildMenuItem(BottomMenuModel menuItem, BuildContext context, bool isActive) {
    final theme = Theme.of(context);
    final textStyle = isActive
        ? CustomTextStyles.labelLargePrimary.copyWith(color: theme.colorScheme.primary)
        : CustomTextStyles.bodyMediumPrimary.copyWith(color: theme.colorScheme.primary);

    return Container(
      decoration: AppDecoration.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Divider(),
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(34.h, 47.v, 34.h, 12.v),
                    child: Text(
                      menuItem.title ?? "",
                      style: textStyle,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Icon(menuItem.icon, color: isActive ? theme.colorScheme.primary : null),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  final IconData icon;
  final IconData activeIcon;
  final String? title;
  final BottomBarEnum type;
}
class DefaultWidget extends StatelessWidget {
  const DefaultWidget({super.key});

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
            Text("Replace the respective widget here",
            style: TextStyle(
              fontSize: 18
            ),)
          ],
        ),
      ),
    );
  }
}