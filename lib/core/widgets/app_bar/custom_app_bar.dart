import 'package:flutter/material.dart';
import 'package:payroll_ui_model_gtx/themes/theme_helper.dart';
import 'package:payroll_ui_model_gtx/utils/size_utils.dart';

enum Style { bgFill_1, bgFill }

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar(
      {Key? key,
      this.height,
      this.styleType,
      this.leadingWidth,
      this.leading,
      this.title,
      this.centerTitle,
      this.actions})
      : super(key: key);

  final double? height;
  final Style? styleType;
  final double? leadingWidth;
  final Widget? leading;
  final Widget? title;
  final bool? centerTitle;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 55.v,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(SizeUtils.width, height ?? 55.v);
  getStyle() {
    switch (styleType) {
      case Style.bgFill_1:
        return Container(
          height: 55.v,
          width: 402.h,
          decoration: BoxDecoration(color: AppTheme.gray100),
        );
      case Style.bgFill:
        return Container(
          height: 55.v,
          width: 402.v,
          decoration: BoxDecoration(color: theme.colorScheme.onPrimary),
        );
      default:
        return null;
    }
  }
}
